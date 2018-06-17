Rails.application.routes.draw do
  resources :status_task_users
  resources :statuses
  resources :users
  resources :tasks do
    member do
      post 'add_user'
      post 'remove_user'
      post 'assign_user'
    end
  end
  # root 'static_pages#home'
  root 'sessions#create'
  resources :roles

  get  '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
