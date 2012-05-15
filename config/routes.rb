Gifhub::Application.routes.draw do
  root to: "gifs#index"

  resources :gifs
end
