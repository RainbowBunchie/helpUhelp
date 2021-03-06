class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :add_user, :remove_user, :assign_user]
  before_action :require_login
  before_action :require_admin, only: [:edit, :update, :destroy, :new, :assign_user]

  # GET /tasks
  # GET /tasks.json
  def index
    # für user

    @assigned_usertasks = @current_user.tasks.distinct.confirmed.future

    @pending_usertasks = @current_user.tasks.distinct.pending.future

    @open_usertasks = Task.includes(:status_task_users).where(:status_task_users => { :status_id => [nil, 1] }).future - @pending_usertasks

    # für admin:

    @tasks_with_applications = Task.distinct.pending.future

    @tasks_without_applications_and_not_pending = Task.includes(:status_task_users).where(:status_task_users => { :status_id => nil }).future

    @assigned_tasks = Task.distinct.confirmed.future

    @status_task_users = StatusTaskUser.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task_applicants = StatusTaskUser.where(task_id: @task.id)
    @assigned_applicant = User.find(StatusTaskUser.where(task_id: @task.id, status_id: 3).pluck(:user_id))
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # add user to task
  def add_user
    stu = StatusTaskUser.new({ :user_id => current_user.id, :task_id => @task.id, :status_id => 1 })
    respond_to do |format|
      if stu.save
        format.html { redirect_to tasks_url, notice: 'Du hast dich für die Aufgabe beworben!' }
        format.json { head :no_content }
      else
        format.html { redirect_to tasks_url, notice: 'Da hat etwas nicht funktioniert!' }
        format.json { head :no_content }
      end
    end
  end

  # remove user from task
  def remove_user
    StatusTaskUser.where(user_id: current_user.id, task_id: @task.id).delete_all
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Du hast deine Bewerbung für die Aufgabe zurückgezogen!' }
      format.json { head :no_content }
    end
  end

  def assign_user
    task_applicants = StatusTaskUser.where(task_id: @task.id)

    task_applicants.each do |a|
      a.status_id = 2
      a.save
    end

    assigned_candidate = StatusTaskUser.where(user_id: params[:applicant_id], task_id: @task.id).first
    assigned_candidate.status_id = 3

    if assigned_candidate.save
      respond_to do |format|
        format.html { redirect_to @task, notice: 'Eine neue Person wurde der Aufgabe zugewiesen!' }
        format.json { render :show, status: :ok, location: @task }
      end
    else
      respond_to do |format|
        format.html { redirect_to @task, notice: 'Da hat etwas nicht funktioniert!' }
        format.json { render :show, status: :ok, location: @task }
      end
    end
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Aufgabe wurde erfolgreich erstellt!' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Aufgabe wurde erfolgreich bearbeitet!' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Aufgabe wurde erfolgreich gelöscht!' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:description, :date, :time, :place, :assigned, :no_of_people, :title)
  end
end
