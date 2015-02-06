class CreateProductUnits < ActiveRecord::Migration
  def change
    create_table :product_units do |t|
      t.string :title
      t.text :description
      t.boolean :visible
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_units, :users, column: :creator_id
  end
end
