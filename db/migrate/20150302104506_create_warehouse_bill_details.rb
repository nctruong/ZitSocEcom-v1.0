class CreateWarehouseBillDetails < ActiveRecord::Migration
  def change
    create_table :warehouse_bill_details do |t|
      t.references :warehouse_bill, index: true
      t.references :product, index: true
      t.references :product_unit, index: true
      t.integer :order_quantity
      t.integer :real_quanity
      t.integer :price
      t.integer :reduce_price
      t.integer :reduce_percent
      t.integer :tax
      t.integer :subtotal
      t.integer :subtotal_reduced
      t.integer :subtotal_taxincl
      t.text :note

      t.timestamps null: false
    end
    add_foreign_key :warehouse_bill_details, :warehouse_bills
    add_foreign_key :warehouse_bill_details, :products
    add_foreign_key :warehouse_bill_details, :product_units
  end
end
