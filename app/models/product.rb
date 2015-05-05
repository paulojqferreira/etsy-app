class Product < ActiveRecord::Base
 belongs_to :category
 validates :product_name, :description, :price, :thumburl, presence: true
end
