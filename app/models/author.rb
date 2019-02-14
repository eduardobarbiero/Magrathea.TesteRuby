class Author < ApplicationRecord
    validates :integration_id, presence: true, uniqueness: true

    has_many :messages

    # rules
    def exist_message? message_id
        self.messages.exists?(author: self.id, integration_id: message_id)
    end
    
end
