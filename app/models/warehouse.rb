class Warehouse < ActiveRecord::Base
  has_paper_trail
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :receipts, class_name: 'WarehouseReceipt'
  has_many :bills, class_name: 'CreateWarehouseBills'
end