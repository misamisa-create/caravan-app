class BlogsController < ApplicationController

  def show
  end

  def index
    @blogs= Blog.all
  end

  def new
    @blog=Blog.new
  end

  def create
    blog= Blog.new(blogs_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blogs_params
    params.require(:blog).permit(:title,:category,:body)
  end
end
