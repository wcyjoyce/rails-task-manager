Rails.application.routes.draw do
  # List tasks
  get "tasks", to: "tasks#index"

  # Add task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Display a single task
  get "tasks/:id", to: "tasks#show", as: :task

  # Update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit
  patch "tasks/:id", to: "tasks#update"

  # Delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
