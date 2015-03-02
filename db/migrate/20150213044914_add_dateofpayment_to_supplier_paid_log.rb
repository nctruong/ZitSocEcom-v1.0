class AddDateofpaymentToSupplierPaidLog < ActiveRecord::Migration
  def change
    add_column :supplier_paid_logs, :dateofpayment, :datetime
  end
end
