class Product < ActiveRecord::Base
  belongs_to :user
  has_many :orders, through: :products_orders
end
