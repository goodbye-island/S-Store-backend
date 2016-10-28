require 'test_helper'

class CourseControllerTest < ActionController::TestCase
  test "should get getInfo" do
    get :getInfo
    assert_response :success
  end

end
