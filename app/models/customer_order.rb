class CustomerOrder < ActiveRecord::Base
  belongs_to :customer
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :order_details, class_name: 'CustomerOrderDetail'
  has_many :paid_logs, class_name: 'CustomerOrderPaidLog'
end
