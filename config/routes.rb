Rails.application.routes.draw do
  root to: "public#homepage"
  resources :decks, only: [:index, :create, :show, :new, :edit, :update, :destroy]
  resources :cards, only: [:index, :create, :show, :new, :edit, :update, :destroy]
  resources :organizations, only: [:show]
end
