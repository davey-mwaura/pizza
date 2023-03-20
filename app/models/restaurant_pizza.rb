class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizzafood

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
end