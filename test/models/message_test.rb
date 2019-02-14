require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "author name is required, but this valid" do

    hashtag = create(:random_hashtag)
    author = create(:random_author)
    
    twitter_status = Faker::Twitter.status
    message = Message.new(hashtag: hashtag, author: author, text: twitter_status[:text], publication: twitter_status[:created_at])
    
    assert message.valid?
  end
end
