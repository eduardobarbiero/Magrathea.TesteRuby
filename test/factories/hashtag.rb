FactoryBot.define do    
    factory :random_hashtag, class: Hashtag do      
      name { Faker::Name.first_name }      
    end
end