class CreateCustomerPaidLogs < ActiveRecord::Migration
  def change
    create_table :customer_paid_logs do |t|
      t.references :customer, index: true
      t.integer :beforepaid, default: 0
      t.integer :paid, default: 0
      t.integer :afterpaid, default: 0
      t.datetime :dateofpayment
      t.text :note
      t.references :creator, references: :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :customer_paid_logs, :customers
    add_foreign_key :customer_paid_logs, :users, column: :creator_id
  end
end
