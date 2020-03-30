Rails.application.routes.draw do
  
  
  root to: "static_pages#index"

  get 'get-in-touch', to: 'static_pages#contact'
  get 'about', to: 'static_pages#about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'signOff', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: [:new, :create, :show]
end
