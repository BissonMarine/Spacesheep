Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :spaceships, only: %i[index new create show] do
    resources :bookings, only: :create
  end
  resources :bookings, only: :index
  namespace :owner do # le namespace permet de créer une route sur un élément particulier (owner) qui n'est pas un modèle existant
    resources :bookings, only: :index do
      member do
        patch :accept # vient créer une méthode et une route pour l'action accept
        patch :decline
      end
    end
  end
end
