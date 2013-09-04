class Country < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :cities
end
