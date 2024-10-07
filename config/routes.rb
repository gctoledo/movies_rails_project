Rails.application.routes.draw do
  root to: "home#index"

  resources :movies, only: [ :show, :new, :create, :edit, :update, :destroy ]
  resources :directors, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  resources :genres, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
end
