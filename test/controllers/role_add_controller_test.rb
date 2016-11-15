require 'test_helper'

class RoleAddControllerTest < ActionController::TestCase
  test "should get role_add" do
    get :role_add
    assert_response :success
  end

end
