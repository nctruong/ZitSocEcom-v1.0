class WarehouseBillDetail < ActiveRecord::Base
  belongs_to :warehouse_bill
  belongs_to :product
  belongs_to :product_unit
end
