require 'services/twitter/twitter_hashtag_collect'

class TwitterCollectorJob < ApplicationJob
  include TwitterHashTagCollect
  queue_as :default

  def perform(*args)
    collect_all_hashtags
  end
end
