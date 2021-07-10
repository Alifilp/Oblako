class TodosController < ApplicationController
	def create
		@project = Project.find_or_create_by!(id: params[:project_id]) do |c|
    	c.title = params[:project][:title]
		end
		@project.todos.create(title: params[:todo][:title], is_completed: false)
		render json: @project.to_json(methods: :todos)
		
	end
	def update
		@todo = Todo.find(params[:todo_id])
		@todo.update(is_completed: !@todo.is_completed)
	end
end