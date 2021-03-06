class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum:20}
  has_many :messages
end
