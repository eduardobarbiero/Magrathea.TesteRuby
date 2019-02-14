require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "author name is required, but this valid" do
    message = create(:random_message)
    
    assert message.valid?
  end
end
