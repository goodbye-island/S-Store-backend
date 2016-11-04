require 'test_helper'

class ClassAddControllerTest < ActionController::TestCase
  test "should get class_add" do
    get :class_add
    assert_response :success
  end

end
