require 'test_helper'

class TermViewControllerTest < ActionController::TestCase
  test "should get term_view" do
    get :term_view
    assert_response :success
  end

end
