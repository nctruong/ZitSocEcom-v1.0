class CreateWarehouseReceipts < ActiveRecord::Migration
  def change
    create_table :warehouse_receipts do |t|
      t.references :warehouse, index: true
      t.references :supplier_order, index: true
      t.integer :total_excl, default: 0
      t.integer :total_incl, default: 0
      t.integer :reduce_price, default: 0
      t.integer :reduce_percent, default: 0
      t.integer :total_reduced, default: 0
      t.integer :status, default: 0
      t.datetime :created
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :warehouse_receipts, :warehouses
    add_foreign_key :warehouse_receipts, :supplier_orders
    add_foreign_key :warehouse_receipts, :users, column: :creator_id
  end
end
