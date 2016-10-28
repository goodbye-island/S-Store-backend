require 'test_helper'

class SemesterViewControllerTest < ActionController::TestCase
  test "should get getSemesters" do
    get :getSemesters
    assert_response :success
  end

end
