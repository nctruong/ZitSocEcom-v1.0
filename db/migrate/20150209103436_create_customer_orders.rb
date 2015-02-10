class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|
      t.references :customer, index: true
      t.integer :total_excl, default: 0
      t.integer :total_incl, default: 0
      t.integer :reduce_price, default: 0
      t.integer :reduce_percent, default: 0
      t.integer :total_reduced, default: 0
      t.integer :prepaid, default: 0
      t.datetime :created
      t.integer :status, default: 0
      t.text :note
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :customer_orders, :customers
    add_foreign_key :customer_orders, :users, column: :creator_id
  end
end
