Rails.application.routes.draw do

  get 'dives/index'

  get 'dives/new'

  get 'dives/show'

  get 'dives/create'

  get 'dives/edit'

  get 'dives/update'

  get 'dives/destroy'

  root 'places#index'
  resources :users, :places, :dives

  get '/logout' => 'sessions#destroy', as: :logout
  post '/sessions' => 'sessions#create'
  get '/sessions/new' => 'sessions#new', as: :new_session

end
