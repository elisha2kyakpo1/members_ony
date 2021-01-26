class Post < ApplicationRecord
  belongs_to :user
  validates :Title, length: { minimum: 1, maximum: 80 }, presence: true
  validates :Body, length: { minimum: 1, maximum: 1200 }, presence: true
end
