class UserRole < ActiveRecord::Base
	has_paper_trail
	has_many :permissions
	has_many :users
end
