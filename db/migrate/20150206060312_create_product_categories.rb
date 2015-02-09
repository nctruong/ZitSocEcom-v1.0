class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :title
      t.text :description
      t.references :parent, references: :product_categories, index: true
      t.integer :weight
      t.boolean :visible, default: true
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_categories, :product_categories, column: :parent_id
    add_foreign_key :product_categories, :users, column: :creator_id
  end
end
