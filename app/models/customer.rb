class Customer < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :customer_group_associations
  has_many :customer_groups, through: :customer_group_associations
end
