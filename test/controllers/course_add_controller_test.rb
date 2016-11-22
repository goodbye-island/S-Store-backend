require 'test_helper'

class CourseAddControllerTest < ActionController::TestCase
  test "should get course_add" do
    get :course_add
    assert_response :success
  end

end
