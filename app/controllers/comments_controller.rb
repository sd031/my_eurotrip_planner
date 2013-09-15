class CommentsController < ApplicationController
  def new
      @comment = Comment.new
    end

  def create
      @comment = Comment.new(params[:comment])
      if @comment.save
        respond_to do |format|
          format.html {   }
          format.js
          format.xml { render :xml => @comment}
        end
      end
   end

  def show
  end
end
