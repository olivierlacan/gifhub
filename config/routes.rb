Gifhub::Application.routes.draw do
  root to: "gifs#index"

  resources :gifs
  resources :tags, only: [:index]
end
