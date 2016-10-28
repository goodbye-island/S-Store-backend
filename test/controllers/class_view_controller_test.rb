require 'test_helper'

class ClassViewControllerTest < ActionController::TestCase
  test "should get getClasses" do
    get :getClasses
    assert_response :success
  end

end
