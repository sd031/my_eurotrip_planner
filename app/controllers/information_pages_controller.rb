class InformationPagesController < ApplicationController
  def about
  end

  def contactus
    @comment = Comment.first
  end
end
