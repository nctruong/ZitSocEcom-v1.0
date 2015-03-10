class RenameColumnSupplierOrderPaidLog < ActiveRecord::Migration
  def change
  	rename_column :supplier_order_paid_logs, :beforpaid, :beforepaid
  end
end
