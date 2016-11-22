require 'test_helper'

class CourseViewControllerTest < ActionController::TestCase
  test "should get course_view" do
    get :course_view
    assert_response :success
  end

end
