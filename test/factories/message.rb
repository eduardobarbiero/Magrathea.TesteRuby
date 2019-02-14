require 'test_helper'

FactoryBot.define do    
    factory :random_message, class: Message do      
        twitter_status = Faker::Twitter.status
        hashtag 
        author
        text { twitter_status[:text] }
        publication { twitter_status[:created_at] } 
        integration_id { twitter_status[:id_str] }
    end
end