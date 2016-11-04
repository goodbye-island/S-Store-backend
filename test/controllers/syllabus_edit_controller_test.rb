require 'test_helper'

class SyllabusEditControllerTest < ActionController::TestCase
  test "should get syllabus_edit" do
    get :syllabus_edit
    assert_response :success
  end

end
