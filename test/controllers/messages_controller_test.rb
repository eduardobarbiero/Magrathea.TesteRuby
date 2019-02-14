require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hashtags_url
    assert_response :success
  end
end
