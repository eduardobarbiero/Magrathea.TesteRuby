require 'test_helper'
require 'services/twitter/twitter_collector'

 
class TwitterCollectorTest < ActiveJob::TestCase
    test 'instance collector' do
        collector = TwitterCollector.new(take: 10, permit_rt: true)

        assert_equal collector.result_type, "recent"
        assert_equal collector.rt, "-rt"
    end
end