class SupplierOrderPaidLog < ActiveRecord::Base
  belongs_to :supplier_paid_log
  belongs_to :supplier_order
end
