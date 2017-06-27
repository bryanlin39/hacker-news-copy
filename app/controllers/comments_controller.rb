class CommentsController < ApplicationController

  def show
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])


private

  def comment_params
    params.require(:comment).permit(:content, :author)
  end

end
