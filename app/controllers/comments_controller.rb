class CommentsController < ApplicationController
  def new
      @comment = Comment.new
    end

  def index
  end
  def create
      @comment = Comment.new(params[:comment])
      if @comment.save
        redirect_to contactus_path
      else
        render 'new'
      end
    end

  def show
  end
end
