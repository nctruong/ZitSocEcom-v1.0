class Permission < ActiveRecord::Base
	belongs_to :user_role

	def action_enum
		['access', 'dashboard', 'read', 'create', 'update', 'export', 'history', 'destroy', 'show_in_app', 'manage']
	end
end
