class WarehouseReceiptDetail < ActiveRecord::Base
  belongs_to :warehouse_receipt
  belongs_to :product
  belongs_to :product_unit
  has_many :receipts, class_name: 'WarehouseReceipt'
end
