require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get events_controller_new_url
    assert_response :success
  end

  test "should get show" do
    get events_controller_show_url
    assert_response :success
  end

end
