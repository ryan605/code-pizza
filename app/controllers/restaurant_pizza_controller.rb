class RestaurantPizzaController < ApplicationController
    validates :price, length: {in: 1..30}
end
