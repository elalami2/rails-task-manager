require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get task_edit_url
    assert_response :success
  end

end
