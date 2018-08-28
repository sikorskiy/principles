require 'test_helper'

class DailyTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get daily_tasks_new_url
    assert_response :success
  end

  test "should get create" do
    get daily_tasks_create_url
    assert_response :success
  end

  test "should get index" do
    get daily_tasks_index_url
    assert_response :success
  end

end
