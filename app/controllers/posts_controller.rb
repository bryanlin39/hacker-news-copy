class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully added!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post successfully updated!"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.comments.each do |comment|
      comment.destroy
    end
    @post.destroy
    redirect_to posts_path, notice: "Post successfully deleted!"
  end

  def upvote
    @post = Post.find(params[:id])
    votes = @post.votes
    @post.update(votes: votes+1)
    redirect_to post_path(@post)
  end

private

  def post_params
    params.require(:post).permit(:title, :author, :link)
  end

end
