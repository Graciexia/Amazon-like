class CreateProductsOrders < ActiveRecord::Migration
  def change
    create_table :products_orders do |t|
      t.integer :quantity, default: 0
      t.belongs_to :product, index: true, foreign_key: true
      t.belongs_to :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
