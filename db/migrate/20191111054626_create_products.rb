class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :period
      t.integer :price
      t.timestamps
    end
  end
end
