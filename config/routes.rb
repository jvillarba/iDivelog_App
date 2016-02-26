Rails.application.routes.draw do

  get 'places/index'

  get 'places/new'

  get 'places/show'

  get 'places/create'

  get 'places/edit'

  get 'places/update'

  get 'places/destroy'

  root 'places#index'
  resources :users, :places, :dives

  get '/logout' => 'sessions#destroy', as: :logout
  post '/sessions' => 'sessions#create'
  get '/sessions/new' => 'sessions#new', as: :new_session

end
