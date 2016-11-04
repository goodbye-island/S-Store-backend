require 'test_helper'

class DepartmentAddControllerTest < ActionController::TestCase
  test "should get DepartmentAdd" do
    get :DepartmentAdd
    assert_response :success
  end

end
