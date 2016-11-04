require 'test_helper'

class UserViewControllerTest < ActionController::TestCase
  test "should get UserView" do
    get :UserView
    assert_response :success
  end

end
