require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message = create(:random_message)
  end

  test "should get index" do
    get messages_path
    assert_response :success
  end

  test "should get index by filter hashtag" do    
    get messages_path, { params: { hashtag_id: @message.hashtag_id }}
    assert_response :success
  end
  
end
