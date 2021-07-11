Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about' 
  get 'signup', to: 'users#new'
  resources :articles , only: [:show, :index,  :new, :create, :edit, :update, :destroy  ]
  resources :users, except: [:new]

  #For the login session of a user
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
