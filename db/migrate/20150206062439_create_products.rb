class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :title
      t.text :description
      t.text :content
      t.integer :price, default: 0
      t.integer :wholesale_price, default: 0
      t.string :thumb
      t.references :default_unit, references: :product_units, index: true
      t.boolean :visible, default: true
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :product_units, column: :default_unit_id
    add_foreign_key :products, :users, column: :creator_id
  end
end
