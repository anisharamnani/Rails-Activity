class PostsController < ApplicationController
  def index 
    @posts = Post.all
  end 

  def show 
    @post= Post.find(params[:id])
  end 

  def new 
    @post= Post.new
  end 

  def edit 
    @post= Post.find(params[:id])
  end 

  def create 
    @post= Post.new(params[:post])
    @post.save
    redirect_to @post
  end

  def update
    @post= Post.find(params[:id])
  end  

  def destroy 
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to @post
  end
end
