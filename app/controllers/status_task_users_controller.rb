class StatusTaskUsersController < ApplicationController
  before_action :set_status_task_user, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  before_action :require_admin

  # GET /status_task_users
  # GET /status_task_users.json
  def index
    @status_task_users = StatusTaskUser.all
  end

  # GET /status_task_users/1
  # GET /status_task_users/1.json
  def show
  end

  # GET /status_task_users/new
  def new
    @status_task_user = StatusTaskUser.new
  end

  # GET /status_task_users/1/edit
  def edit
  end

  # POST /status_task_users
  # POST /status_task_users.json
  def create
    @status_task_user = StatusTaskUser.new(status_task_user_params)

    respond_to do |format|
      if @status_task_user.save
        format.html { redirect_to @status_task_user, notice: 'Status task user was successfully created.' }
        format.json { render :show, status: :created, location: @status_task_user }
      else
        format.html { render :new }
        format.json { render json: @status_task_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_task_users/1
  # PATCH/PUT /status_task_users/1.json
  def update
    respond_to do |format|
      if @status_task_user.update(status_task_user_params)
        format.html { redirect_to @status_task_user, notice: 'Status task user was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_task_user }
      else
        format.html { render :edit }
        format.json { render json: @status_task_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_task_users/1
  # DELETE /status_task_users/1.json
  def destroy
    @status_task_user.destroy
    respond_to do |format|
      format.html { redirect_to status_task_users_url, notice: 'Status task user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_task_user
      @status_task_user = StatusTaskUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_task_user_params
      params.require(:status_task_user).permit(:user_id, :task_id, :status_id)
    end
end
