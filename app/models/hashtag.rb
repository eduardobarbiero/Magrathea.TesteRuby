class Hashtag < ApplicationRecord
    validates :name, presence: true, uniqueness: true, format: { with: /[a-zA-Z0-9]/ }

    has_many :messages, dependent: :destroy
end
