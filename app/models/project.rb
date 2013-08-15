class Project < ActiveRecord::Base
	belongs_to :user
	has_many :tasks, dependent: :destroy

	default_scope order(:name)

	validates :name, presence: true
	validates :desc, presence: true
	validates :desc, length: { maximum:20 }

	def to_param
		"#{id}-#{name}".parameterize
	end
end
