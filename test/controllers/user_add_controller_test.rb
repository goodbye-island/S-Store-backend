require 'test_helper'

class UserAddControllerTest < ActionController::TestCase
  test "should get UserAdd" do
    get :UserAdd
    assert_response :success
  end

end
