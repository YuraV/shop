class Category < ActiveRecord::Base
  attr_accessible :description, :published, :title

  has_many :products
end
