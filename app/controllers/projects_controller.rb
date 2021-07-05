class ProjectsController < ApplicationController
	def index
		render json: Project.all.to_json(methods: :todos)

	end


end