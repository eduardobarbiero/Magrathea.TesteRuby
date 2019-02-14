class Message < ApplicationRecord
  default_scope { order(publication: :desc) }

  scope :filter_by_hashtag, ->(hashtag_id) { where hashtag_id: hashtag_id }

  belongs_to :hashtag
  belongs_to :author
end
