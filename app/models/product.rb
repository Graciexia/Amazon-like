class Product < ActiveRecord::Base
  has_many :orders, through: :products_orders
end
