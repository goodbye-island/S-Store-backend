require 'test_helper'

class AuthTestControllerTest < ActionController::TestCase
  test "should get AuthTest" do
    get :AuthTest
    assert_response :success
  end

end
