class CommentsController < ApplicationController
  def new
      @comment = Comment.new
    end

  def index
  end
  def create
      @comment = Comment.new(params[:comment])
      if @comment.save
        respond_to do |format|
          format.html { render 'new'  }
          format.js
        end
      else
        render 'new'
      end
    end

  def show
  end
end
