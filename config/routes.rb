Rails.application.routes.draw do

  root 'static_pages#home'
  get '/help', to:'static_pages#help'
  get '/about', to:'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact', to:'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
    resources :microposts do
      resources :fav, only:[:create,:destroy]
    end
  end

  resources :users
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :favorites,       only: [:create, :destroy]
end

