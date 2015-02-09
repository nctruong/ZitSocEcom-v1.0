class Product < ActiveRecord::Base
  has_paper_trail
  belongs_to :default_unit, class_name: 'ProductUnit', foreign_key: 'default_unit_id'
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :product_category_associations
  has_many :product_categories, through: :product_category_associations
  has_many :product_unit_associations
  has_many :product_units, through: :product_unit_associations
end
