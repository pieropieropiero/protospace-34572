Rails.application.routes.draw do

  devise_for :users
  root to: "prototypes#index"


  get "/" => "prototypes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  resources :comments, only: [:create]

  resources :users, only: :show

  resources :prototypes do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end



end



