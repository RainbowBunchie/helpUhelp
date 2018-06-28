# require 'test_helper'

# class TasksControllerTest < ActionController::TestCase
#   setup do
#     @task = tasks(:one)
#     @user = users(:two)
#     session[:user_id] = @user.id
#   end

#   test "should get index" do
#     # get :new
#     get tasks_url
#     assert_response :success
#   end

#   test "should get new" do
#     # get :new
#     get new_task_url
#     assert_response :success
#   end

    # test "should create task" do
    #   get :new
    #   assert_difference('Task.count') do
    #     post tasks_url, params: { task: { date: @task.date, description: @task.description, no_of_people: @task.no_of_people, place: @task.place, title: @task.title, time: @task.time } }
    #   end

    #   assert_redirected_to task_url(Task.last)
    # end

#   test "should show task" do
#     get task_url(@task)
#     assert_response :success
#   end

#   test "should get edit" do
#     get edit_task_url(@task)
#     assert_response :success
#   end

#   test "should update task" do
#     patch task_url(@task), params: { task: { date: @task.date, description: @task.description, no_of_people: @task.no_of_people, place: @task.place, title: @task.title, time: @task.time } }
#     assert_redirected_to task_url(@task)
#   end

#   test "should destroy task" do
#     assert_difference('Task.count', -1) do
#       delete task_url(@task)
#     end

#     assert_redirected_to tasks_url
#   end
# end
