class WarehouseReceipt < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :supplier_order
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :receipt_details, class_name: 'WarehouseReceiptDetail'
end
