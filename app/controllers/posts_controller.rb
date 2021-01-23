# frozen_string_literal: true

class PostsController < ApplicationController
  skip_before_action :require_login, except: %i[new create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to index_posts_path
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_params)
  end
end
