require 'test_helper'

class SyllabusDeleteControllerTest < ActionController::TestCase
  test "should get syllabus_delete" do
    get :syllabus_delete
    assert_response :success
  end

end
