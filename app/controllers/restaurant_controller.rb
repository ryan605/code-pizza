class RestaurantController < ApplicationController
    def index
        restaurant = Restaurant.all
        render json: restaurant
    end

    def show
        restaurant =  Restaurant.find_by(id: params[:id])
        if restaurant
           render json: restaurant, include: :pizzas
        else
            render json: { error: "Restaurant not Found" }, status: :not_found
        end
    end

    def destroy
        id = params[:id]
        restaurant = Restaurant.find(id.to_i)
        if restaurant
            restaurant.destroy
            render json: {}, status: :not_found
        else
            render json: { error: "Restaurant not found" }, status: :not_found
        end
    end
    
end
