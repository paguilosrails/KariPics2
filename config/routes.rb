Rails.application.routes.draw do
  get 'comentario/index'
  get 'home/index'
  resources :publications  
  resources :comentarios
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
   }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
