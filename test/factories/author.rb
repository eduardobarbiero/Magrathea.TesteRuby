FactoryBot.define do    
     
    factory :random_author, class: Author, aliases: [:author] do      
    
      twitter_user = Faker::Twitter.user(include_status: true)
      
      name { twitter_user[:name] }
      profile_image_url { twitter_user[:profile_image_url] }
      url { twitter_user[:url] }
      integration_id { twitter_user[:id] }
    end
end