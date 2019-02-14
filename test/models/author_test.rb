require 'test_helper'

class AuthorTest < ActiveSupport::TestCase 

  test "author name is required, but this valid" do
    author = Author.new(name: "ia", url: "https://twitter.com/manualusuariobr", profile_image_url: "https://pbs.twimg.com/profile_images/924613956970434561/C_du-bRA_400x400.jpg")
    
    assert author.valid?
  end
end
