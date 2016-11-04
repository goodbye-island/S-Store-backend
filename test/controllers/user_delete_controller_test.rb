require 'test_helper'

class UserDeleteControllerTest < ActionController::TestCase
  test "should get UserDelete" do
    get :UserDelete
    assert_response :success
  end

end
