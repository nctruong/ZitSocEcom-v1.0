class CreateWarehouseBills < ActiveRecord::Migration
  def change
    create_table :warehouse_bills do |t|
      t.references :warehouse, index: true
      t.references :customer_order, index: true
      t.integer :total_excl, default: 0
      t.integer :total_incl, default: 0
      t.integer :reduce_price, default: 0
      t.integer :reduce_percent, default: 0
      t.integer :total_reduced, default: 0
      t.integer :status, default: 0
      t.text :note
      t.datetime :created
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :warehouse_bills, :warehouses
    add_foreign_key :warehouse_bills, :customer_orders
    add_foreign_key :warehouse_bills, :users, column: :creator_id
  end
end
