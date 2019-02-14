class Message < ApplicationRecord
  default_scope { order(publication: :desc) }

  belongs_to :hashtag
  belongs_to :author
end
