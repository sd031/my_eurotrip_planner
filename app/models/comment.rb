class Comment < ActiveRecord::Base
  attr_accessible :comment, :email, :name
  validates :name, presence: true, length: { maximum: 60 }
  validates :comment, presence: true

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, format: { with: VALID_EMAIL_REGEX }


end
