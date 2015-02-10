class SupplierPaidLog < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
