class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inlcusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid size" }
end
