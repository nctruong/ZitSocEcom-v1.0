class CreateSupplierOrders < ActiveRecord::Migration
  def change
    create_table :supplier_orders do |t|
      t.references :supplier, index: true
      t.integer :total_excl, default: 0
      t.integer :total_incl, default: 0
      t.integer :reduce_price, default: 0
      t.integer :reduce_percent, default: 0
      t.integer :total_reduced, default: 0
      t.integer :prepaid, default: 0
      t.datetime :created, :null => false, :default => Time.now
      t.string :status
      t.text :note
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :supplier_orders, :suppliers
    add_foreign_key :supplier_orders, :users, column: :creator_id
  end
end
