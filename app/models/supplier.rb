class Supplier < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :orders, class_name: 'SupplierOrder'
  has_many :paid_logs, class_name: 'SupplierPaidLog'
  has_many :supplier_product_associations
  has_many :products, through: :supplier_product_associations
end
