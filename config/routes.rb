Rails.application.routes.draw do
  get 'pages/home'

  namespace :api do
    resources :decks
    resources :cards
  end

  root to: "pages#home"
end
