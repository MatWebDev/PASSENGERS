Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :projects do
    resources :collaborations, only: %i[new create update]
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get 'dashboard', to: "pages#dashboard"
end
