class ProductUnitAssociation < ActiveRecord::Base
  has_paper_trail
  belongs_to :product
  belongs_to :product_unit
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
