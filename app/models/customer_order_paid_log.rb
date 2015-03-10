class CustomerOrderPaidLog < ActiveRecord::Base
  belongs_to :customer_paid_log
  belongs_to :customer_order
end
