Rails.application.routes.draw do

  resources :users
  resources :tasks
  #root 'static_pages#home'
	root 'sessions#create'
  resources :roles

  get  '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  get  '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/addUser', to: 'tasks#addUser'
end
