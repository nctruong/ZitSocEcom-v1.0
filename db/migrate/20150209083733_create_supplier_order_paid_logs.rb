class CreateSupplierOrderPaidLogs < ActiveRecord::Migration
  def change
    create_table :supplier_order_paid_logs do |t|
      t.references :supplier_paid_log, index: true
      t.references :supplier_order, index: true
      t.integer :beforpaid, default: 0
      t.integer :paid, default: 0
      t.integer :afterpaid, default: 0

      t.timestamps null: false
    end
    add_foreign_key :supplier_order_paid_logs, :supplier_paid_logs
    add_foreign_key :supplier_order_paid_logs, :supplier_orders
  end
end
