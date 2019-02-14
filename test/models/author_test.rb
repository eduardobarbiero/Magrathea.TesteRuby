require 'test_helper'

class AuthorTest < ActiveSupport::TestCase 

  test "author name is required, but this valid" do
    author = create(:random_author)
    
    assert author.valid?
  end
end
