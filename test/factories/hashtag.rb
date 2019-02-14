FactoryBot.define do    
    factory :random_hashtag, class: Hashtag, aliases: [:hashtag] do      
      name { Faker::Name.first_name }      
    end
end