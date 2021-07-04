class ProjectsController < ApplicationController
	def index
		render json: {projects: Project.all.to_json(methods: :todos)}

	end


end