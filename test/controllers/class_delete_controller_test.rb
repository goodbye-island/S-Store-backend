require 'test_helper'

class ClassDeleteControllerTest < ActionController::TestCase
  test "should get class_delete" do
    get :class_delete
    assert_response :success
  end

end
