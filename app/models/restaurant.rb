class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzafoods, through: :restaurant_pizzas
  end