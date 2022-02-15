Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Creating route to list tasks
  get '/tasks', to: 'tasks#index'
  # Creating route to display task form
  get '/tasks/new', to: 'tasks#new'
  # Creating route to handle POST request generated when submitting form
  post '/tasks', to: 'tasks#create'
  # Creating route to display details of task
  get '/tasks/:id', to: 'tasks#show', as: :task
end
