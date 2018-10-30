# the routes to our app
Rails.application.routes.draw do
  # get all the task
  get '/tasks', to: 'tasks#index', as: :tasks

  # create new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # display 1 task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # delete task
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy
end
