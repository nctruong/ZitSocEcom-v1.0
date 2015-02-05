class Ability
	include CanCan::Ability

	def initialize(user)
		if user
			can :read, :all
			user.user_role.permissions.each do |permission|
				if (permission.subject_class == "all") ||  (permission.subject_class == "rails_admin")
					can permission.action.to_sym, permission.subject_class.to_sym
				elsif permission.subject_class.nil? || (permission.subject_class == "")
					can permission.action.to_sym
				else
					puts permission.subject_class
					can permission.action.to_sym, permission.subject_class.constantize
				end
			end
		end
	end
end