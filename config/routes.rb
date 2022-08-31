Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :projects do
    resources :collaborations, only: :create
  end

  resources :quotes, only: %i[show new create destroy] do
    resources :elements, only: %i[create destroy]
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get 'dashboard', to: "pages#dashboard"
  get 'selection_freelancers', to: "pages#selection"
end
