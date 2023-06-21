Rails.application.routes.draw do
  
  get 'home/index'
  resources :publications do
    resources :comments, only: [:new, :create, :show, :edit, :update, :destroy]    
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
   }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
