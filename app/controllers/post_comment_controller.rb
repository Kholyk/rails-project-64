# frozen_string_literal: true

class PostCommentController < ApplicationController
  def index; end

  def show; end

  def new; end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  private

  def set_post
    @post = Post.find params[:post_id]
  end

  def set_post_comment
    @post_comment = PostComment.find params[:id]
  end

  def post_comment_params
    params.require(:post, :comment).permit(:content)
  end
end
