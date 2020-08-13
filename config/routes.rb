Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#home'
  
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#google'
  
  resources :users, except: [:new, :create] do
    resources :podcasts, only: [:create]
  end 
  resources :podcasts do
    resources :episodes, only: [:new, :create]
  end 
  resources :subscriptions
  resources :episodes, except: [:new, :create] do
    resources :notes, only: [:new, :create, :index]
  end 
  resources :notes, only: [:show]
  get '/discover' => 'episodes#discover'
end
 