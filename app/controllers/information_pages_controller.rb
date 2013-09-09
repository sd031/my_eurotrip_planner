class InformationPagesController < ApplicationController
  def about
  end

  def contactus
    @comments = Comment.all
  end
end
