class CreateProductUnitAssociations < ActiveRecord::Migration
  def change
    create_table :product_unit_associations do |t|
      t.references :product, index: true
      t.references :product_unit, index: true
      t.boolean :isDefault, default: false
      t.integer :ratio, default: 0
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_unit_associations, :products
    add_foreign_key :product_unit_associations, :product_units
    add_foreign_key :product_unit_associations, :users, column: :creator_id
  end
end
