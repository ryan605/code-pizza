class AddRestaurantAndPizzaToRestaurantPizza < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurant_pizzas, :restaurant_id, :integer :null => false
    add_column :restaurant_pizzas, :pizza_id, :integer :null => false
  end
end
