class Product < ActiveRecord::Base
  attr_accessible :currency, :description, :picture, :price, :title, :category_id

  belongs_to :category

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
