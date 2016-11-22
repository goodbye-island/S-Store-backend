require 'test_helper'

class TeacherViewControllerTest < ActionController::TestCase
  test "should get teacher_view" do
    get :teacher_view
    assert_response :success
  end

end
