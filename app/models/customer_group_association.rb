class CustomerGroupAssociation < ActiveRecord::Base
  belongs_to :customer
  belongs_to :customer_group
end
