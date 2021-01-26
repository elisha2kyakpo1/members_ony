class Post < ApplicationRecord
  belongs_to :user
  validates :Title, length: { minimum: 1, maximum: 80 }, presence: true
  validates :Body, length: { minimum: 1, maximum: 1200 }, presence: true

  def self.search(params)
    return if params[:search].present?

    posts = Post.where('Body LIKE ? or Title LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    posts
  end
end
