class User < ApplicationRecord
  has_many :posts

  validates :username, :email, :password, presence: true
  validates :email, :username, uniqueness: true
  validates :password, :email, length: { in: 6..16 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
