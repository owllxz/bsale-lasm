class CreateCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :category do |t|
      t.string :name

      t.timestamps
    end
  end
end
