class Product < ActiveRecord::Base
  has_many :products_orders
  has_many :orders, through: :products_orders
end
