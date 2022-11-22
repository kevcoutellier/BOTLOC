Rails.application.routes.draw do
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bots/index'
  # get 'bots/new'
  # get 'bots/create'
  # get 'bots/show'
  devise_for :users
  root to: "pages#home"
  resources :bots, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"
end
