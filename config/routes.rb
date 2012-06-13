Gifhub::Application.routes.draw do
  root to: "gifs#index"

  resources :gifs
  resources :tags, only: [:index]

  match '/search/(:query)', to: "gifs#search", method: :get, as: :search
end
