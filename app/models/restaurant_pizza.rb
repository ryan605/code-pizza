class RestaurantPizza < ApplicationRecord
    validates :price, presence: true, length: {minimum: 1 , maximum: 30}
    belongs_to :pizza
    belongs_to :restaurant
end
