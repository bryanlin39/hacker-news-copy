class CommentsController < ApplicationController
  before_action :find_post

  def new
    @comment = @post.comments.new
  end

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post), notice: 'Comment successfully added'
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@post), notice: 'Comment successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post), notice: 'Comment successfully deleted'
  end

private

  def comment_params
    params.require(:comment).permit(:content, :author)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end

end
