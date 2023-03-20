Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzafoods, only: [:index]
  resources :restaurant_pizzas, only: [:create]
end