require 'test_helper'

class UnknownRouteControllerTest < ActionController::TestCase
  test "should get UnknownRoute" do
    get :UnknownRoute
    assert_response :success
  end

end
