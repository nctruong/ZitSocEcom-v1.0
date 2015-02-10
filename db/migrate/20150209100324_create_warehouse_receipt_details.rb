class CreateWarehouseReceiptDetails < ActiveRecord::Migration
  def change
    create_table :warehouse_receipt_details do |t|
      t.references :warehouse_receipt, index: true
      t.references :product, index: true
      t.references :product_unit, index: true
      t.integer :order_quantity, default: 0
      t.integer :real_quantity, default: 0
      t.integer :price, default: 0
      t.integer :reduce_price, default: 0
      t.integer :reduce_percent, default: 0
      t.integer :tax, default: 0
      t.integer :subtotal, default: 0
      t.integer :subtotal_reduced, default: 0
      t.integer :subtotal_taxincl, default: 0
      t.text :note
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :warehouse_receipt_details, :warehouse_receipts
    add_foreign_key :warehouse_receipt_details, :products
    add_foreign_key :warehouse_receipt_details, :product_units
    add_foreign_key :warehouse_receipt_details, :users, column: :creator_id
  end
end
