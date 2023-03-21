class RestaurantPizza < ApplicationRecord
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 , less_than_or_equal_to: 30}
    belongs_to :pizza
    belongs_to :restaurant
end
