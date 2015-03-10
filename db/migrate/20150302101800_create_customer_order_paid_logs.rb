class CreateCustomerOrderPaidLogs < ActiveRecord::Migration
  def change
    create_table :customer_order_paid_logs do |t|
      t.references :customer_paid_log, index: true
      t.references :customer_order, index: true
      t.integer :beforepaid, default: 0
      t.integer :paid, default: 0
      t.integer :afterpaid, default: 0

      t.timestamps null: false
    end
    add_foreign_key :customer_order_paid_logs, :customer_paid_logs
    add_foreign_key :customer_order_paid_logs, :customer_orders
  end
end
