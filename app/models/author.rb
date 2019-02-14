class Author < ApplicationRecord
    validates :integration_id, presence: true, uniqueness: true
end
