class Project < ActiveRecord::Base
	belongs_to :user

	default_scope order(:name)

	def to_param
		"#{id}-#{name}".parameterize
	end
end
