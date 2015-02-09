class ProductCategory < ActiveRecord::Base
  has_paper_trail
  belongs_to :parent, class_name: 'ProductCategory', foreign_key: 'parent_id'
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :childrens, class_name: 'ProductCategory', foreign_key: 'parent_id'
  has_many :product_category_associations
  has_many :products, through: :product_category_associations
end
