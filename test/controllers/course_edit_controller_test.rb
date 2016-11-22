require 'test_helper'

class CourseEditControllerTest < ActionController::TestCase
  test "should get course_edit" do
    get :course_edit
    assert_response :success
  end

end
