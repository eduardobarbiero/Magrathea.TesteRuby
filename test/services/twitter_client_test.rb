require 'test_helper'
require 'services/twitter/twitter_client'
 
class TwitterClientTest < ActiveJob::TestCase
    include TwitterClient

    test 'create client instance' do
        assert client
    end
end