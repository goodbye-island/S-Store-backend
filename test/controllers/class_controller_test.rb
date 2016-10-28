require 'test_helper'

class ClassControllerTest < ActionController::TestCase
  test "should get receive" do
    get :receive
    assert_response :success
  end

end
