Rails.application.routes.draw do
  get 'tasks/new', to: 'task#new'
  post 'tasks', to: 'task#create', as: :create_task

  get 'tasks/:id/edit', to: 'task#edit', as: :edit
  patch 'tasks/:id', to: 'task#update', as: :update
  delete 'tasks/:id', to: 'task#destroy', as: :delete
  get 'tasks/:id', to: 'task#show', as: :task
  get 'tasks', to: 'task#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
