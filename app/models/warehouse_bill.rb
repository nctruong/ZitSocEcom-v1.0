class WarehouseBill < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :customer_order
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :bill_details, class_name: 'WarehouseBillDetail'
end
