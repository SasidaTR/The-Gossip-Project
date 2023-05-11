Rails.application.routes.draw do

<<<<<<< HEAD
  resources :gossips, only: [:new, :create]

  #mise en place du root principal
  root to:'gossips#home' 

  #mise en place d'une page team depuis le controller pages
  get '/team', to: 'gossips#team', as: 'team' #création d'un nom pour le chemin

  #mise en place d'une page contact depuis le controller pages
  get '/contact', to: 'gossips#contact', as: 'contact' #création d'un nom pour le chemin

  #mise en place d'une route dynamique
  get 'welcome(/:first_name)', to: 'gossips#welcome', as: 'welcome' #création d'un nom pour le chemin
  #mise en place d'un parametre optionnel pour first_name

  #mise en place d'un route dynamique
  get 'potin/:id', to:'gossips#potin', as: 'potin'

  #mise en place d'un route dynamique
  get 'user/:user', to:'gossips#user', as: 'user'
=======
  resources :gossips
  resources :cities, only: [:show, :index]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  resources :gossips do
    resources :comments
  end

  resources :gossips do
    member do
      post 'like'
      delete 'dislike'
    end
  end

  root to:'gossips#index' 

  get '/team', to: 'pages#team', as: 'team'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/welcome(/:id)', to: 'pages#welcome', as: 'welcome'  
>>>>>>> Ajout de tout

end