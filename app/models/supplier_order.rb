class SupplierOrder < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :order_details, class_name: 'SupplierOrderDetail'
  has_many :paid_logs, class_name: 'SupplierOrderPaidLog'
end
