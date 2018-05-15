# require 'test_helper'

# class StatusTaskUsersControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @status_task_user = status_task_users(:one)
#   end

#   test "should get index" do
#     get status_task_users_url
#     assert_response :success
#   end

#   test "should get new" do
#     get new_status_task_user_url
#     assert_response :success
#   end

#   test "should create status_task_user" do
#     assert_difference('StatusTaskUser.count') do
#       post status_task_users_url, params: { status_task_user: { status_id: @status_task_user.status_id, task_id: @status_task_user.task_id, user_id: @status_task_user.user_id } }
#     end

#     assert_redirected_to status_task_user_url(StatusTaskUser.last)
#   end

#   test "should show status_task_user" do
#     get status_task_user_url(@status_task_user)
#     assert_response :success
#   end

#   test "should get edit" do
#     get edit_status_task_user_url(@status_task_user)
#     assert_response :success
#   end

#   test "should update status_task_user" do
#     patch status_task_user_url(@status_task_user), params: { status_task_user: { status_id: @status_task_user.status_id, task_id: @status_task_user.task_id, user_id: @status_task_user.user_id } }
#     assert_redirected_to status_task_user_url(@status_task_user)
#   end

#   test "should destroy status_task_user" do
#     assert_difference('StatusTaskUser.count', -1) do
#       delete status_task_user_url(@status_task_user)
#     end

#     assert_redirected_to status_task_users_url
#   end
# end
