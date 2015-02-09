class Supplier < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :orders, class_name: 'SupplierOrder', foreign_key: 'supplier_order_id'
end
