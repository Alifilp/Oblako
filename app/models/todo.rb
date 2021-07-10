class Todo < ApplicationRecord
	belongs_to :project
	validates :title, presence: true
	validates :project_id, numericality: true
end
