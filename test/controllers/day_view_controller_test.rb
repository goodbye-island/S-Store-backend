require 'test_helper'

class DayViewControllerTest < ActionController::TestCase
  test "should get day_view" do
    get :day_view
    assert_response :success
  end

end
