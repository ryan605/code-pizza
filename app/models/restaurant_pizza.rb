class RestaurantPizza < ApplicationRecord
    has_many :pizzas
    has_many :restaurants
end
