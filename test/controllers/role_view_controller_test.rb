require 'test_helper'

class RoleViewControllerTest < ActionController::TestCase
  test "should get role_view" do
    get :role_view
    assert_response :success
  end

end
