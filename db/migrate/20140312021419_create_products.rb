class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.integer :category_id
      t.decimal :price
      t.decimal :sale_price
      t.boolean :on_sale
      t.string :image_url
    end
  end
end
