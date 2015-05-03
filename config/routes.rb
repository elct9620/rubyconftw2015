Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'

  resources :users
 
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  # get '/' => 'static_pages#home'
   root 'static_pages#home'

   namespace :backend do
    get 'dashboard', to:'dashboard#index'
    get 'users', to:'users#index'
    #get 'posts', to:'posts#index'

    # get 'speakers/index'
    resources :speakers
    resources :users
    resources :sponsors
    resources :posts
    
  end

  
end
