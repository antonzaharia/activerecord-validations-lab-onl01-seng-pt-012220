class Post < ActiveRecord::Base
  validates name:, presence: true
  validates content:, length: {maximum: 250}
end
