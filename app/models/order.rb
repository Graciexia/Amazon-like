class Order < ActiveRecord::Base
  belongs_to :user
  has_many :products, through: :products_orders

  def get_total_price

  end
end
