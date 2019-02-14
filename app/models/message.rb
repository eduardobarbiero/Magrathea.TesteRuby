class Message < ApplicationRecord
  belongs_to :hashtag
  belongs_to :author
end
