class User < ApplicationRecord

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, :password, length: { in: 6..16 }
end
