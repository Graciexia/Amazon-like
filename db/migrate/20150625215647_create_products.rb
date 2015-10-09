class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.integer :in_stock
      t.string :pic, null: false, default: 'picture url'

      t.timestamps null: false
    end
  end
end
