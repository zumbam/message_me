class Message < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :body,presence: true, length: {minimum: 1, maximum: 100}

end
