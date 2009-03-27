require 'test_helper'

class GroupOfTasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_of_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_of_task" do
    assert_difference('GroupOfTask.count') do
      post :create, :group_of_task => { }
    end

    assert_redirected_to group_of_task_path(assigns(:group_of_task))
  end

  test "should show group_of_task" do
    get :show, :id => group_of_tasks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => group_of_tasks(:one).to_param
    assert_response :success
  end

  test "should update group_of_task" do
    put :update, :id => group_of_tasks(:one).to_param, :group_of_task => { }
    assert_redirected_to group_of_task_path(assigns(:group_of_task))
  end

  test "should destroy group_of_task" do
    assert_difference('GroupOfTask.count', -1) do
      delete :destroy, :id => group_of_tasks(:one).to_param
    end

    assert_redirected_to group_of_tasks_path
  end
end
