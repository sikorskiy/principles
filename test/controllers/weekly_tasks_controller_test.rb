require 'test_helper'

class WeeklyTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get weekly_tasks_resources_url
    assert_response :success
  end

end
