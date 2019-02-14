require 'test_helper'

class HashtagTest < ActiveSupport::TestCase
  test "hashtag name is required, but this invalid" do
    hashtag = Hashtag.new
    
    assert hashtag.invalid?
  end

  test "hashtag name is required, but this valid" do
    hashtag = Hashtag.new(name: "ia")
    
    assert hashtag.valid?
  end
end
