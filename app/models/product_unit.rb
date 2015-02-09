class ProductUnit < ActiveRecord::Base
  has_paper_trail
  belongs_to :creator, :class_name => 'User', :foreign_key => 'creator_id'
  has_many :product_unit_associations
  has_many :products, through: :product_unit_associations
end
