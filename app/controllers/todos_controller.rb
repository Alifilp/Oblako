class TodosController < ApplicationController
	def create
		if params[:project_id].present?
			@project = Project.find(params[:project_id])
			@project.todos.create(title: params[:todo][:title], is_completed: false)
			render json: @project.to_json(methods: :todos)
		else
			@project = Project.create(title: params[:project][:title])
			@project.todos.create(title: params[:todo][:title], is_completed: false)
			render json: @project.to_json(methods: :todos)
		end
	end
	def update
		@todo = Todo.find(params[:todo_id])
		@todo.update(is_completed: !@todo.is_completed)
	end
end