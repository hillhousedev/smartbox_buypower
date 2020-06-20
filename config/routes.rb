Rails.application.routes.draw do
  resources :posts
  resources :awards
  resources :students
  resources :meter_tokens
  resources :tokens
  resources :auto_load_devices
  resources :viewtesters
  root 'auto_load_devices#index'
  #root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get   '/make_token', to: 'meter_tokens#smartbox_meter'
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :awards do
  member do
    get 'awards'
  end
end
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end