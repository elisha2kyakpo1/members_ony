class Post < ApplicationRecord
  belongs_to :user
  validates :title, length: { minimum: 1, maximum: 80 }, presence: true
  validates :body, length: { minimum: 1, maximum: 1200 }, presence: true
end
