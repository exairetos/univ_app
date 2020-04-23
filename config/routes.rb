Rails.application.routes.draw do
  root 'courses#index'
  get 'courses', to: 'courses#index'
  post 'courses', to: 'courses#create'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  resources :students, except: [:destroy]
  get 'signup', to: 'students#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
