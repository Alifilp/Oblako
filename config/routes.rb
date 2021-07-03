Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/projects", to: "projects#index"
  post "/todos", to: "todos#create"
  patch "/projects/:project_id/todos/:todo_id", to: "todos#update"
end
