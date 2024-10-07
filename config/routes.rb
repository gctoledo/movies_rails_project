Rails.application.routes.draw do
  root to: "home#index"
  get "movie/:id", to: "movie#index"
end
