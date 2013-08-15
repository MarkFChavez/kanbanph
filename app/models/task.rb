class Task < ActiveRecord::Base
	belongs_to :project

	validates :name, presence: true

	scope :todo, -> { where(task_type: "todo") }
	scope :doing, -> {  where(task_type: "doing") }
	scope :done,  -> { where(task_type: "done") }
end
