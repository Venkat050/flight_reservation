Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'

  post '/', to: 'flights#index'
  get '/flights/:id', to: 'flights#booking', as: 'flight'
  post '/flights/:id', to: 'user_travels#create'

  #get '/flight_travels/:id', to: 'flight_travels#show', as: 'flight_travel'

  get '/signup', to: 'users#new'
  resources :users, except: [:new]
  #post 'search', to: 'flights#search', as: 'search'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
