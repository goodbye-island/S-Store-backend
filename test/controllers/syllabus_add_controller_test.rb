require 'test_helper'

class SyllabusAddControllerTest < ActionController::TestCase
  test "should get syllabus_add" do
    get :syllabus_add
    assert_response :success
  end

end
