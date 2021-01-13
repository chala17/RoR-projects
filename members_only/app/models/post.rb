class Post < ApplicationRecord
  belongs_to :user

  validates :title, :body, :user_id, presence: true
  validates :title, length: { in: 1..100 }
  validates :body, length: { in: 1..5000 }
end
