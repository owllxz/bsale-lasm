class CreateProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :product do |t|
      t.string :name
      t.string :url_image
      t.float :price
      t.integer :discount
      t.integer :category

      t.timestamps
    end
  end
end
