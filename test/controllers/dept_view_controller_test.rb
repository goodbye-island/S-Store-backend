require 'test_helper'

class DeptViewControllerTest < ActionController::TestCase
  test "should get getDepts" do
    get :getDepts
    assert_response :success
  end

end
