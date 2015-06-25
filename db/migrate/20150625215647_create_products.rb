class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :price
      t.string :description
      t.string :in_stock
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
