class Hashtag < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
