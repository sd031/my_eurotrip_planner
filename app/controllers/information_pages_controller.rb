class InformationPagesController < ApplicationController
  def about
  end

  def contactus
    @comments = Comment.all

    respond_to do |format|
      format.html {}
      format.xml { render xml: @comments }
    end
  end
end
