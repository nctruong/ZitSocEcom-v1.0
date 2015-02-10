class CreateSupplierProductAssociations < ActiveRecord::Migration
  def change
    create_table :supplier_product_associations do |t|
      t.references :supplier, index: true
      t.references :product, index: true
      t.references :product_unit, index: true
      t.integer :price, default: 0
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :supplier_product_associations, :suppliers
    add_foreign_key :supplier_product_associations, :products
    add_foreign_key :supplier_product_associations, :product_units
    add_foreign_key :supplier_product_associations, :users, column: :creator_id
  end
end