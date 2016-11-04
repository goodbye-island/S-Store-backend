require 'test_helper'

class DepartmentViewControllerTest < ActionController::TestCase
  test "should get DepartmentView" do
    get :DepartmentView
    assert_response :success
  end

end
