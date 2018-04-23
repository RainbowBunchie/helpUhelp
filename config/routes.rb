Rails.application.routes.draw do
	
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :tasks
  root 'static_pages#home'
  resources :users
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
