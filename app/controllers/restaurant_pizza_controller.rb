class RestaurantPizzaController < ApplicationController

    def show
        all = RestaurantPizza.all
        render json: all
    end


    def create
        make = RestaurantPizza.create(params_price)
        if make
            render json: make
        else
            render json: {error: "Validation errors"}, status: :not_found
        end
        
    end

    def index
        respiza = RestaurantPizza.find_by(id: params[:id])
        if respiza
            render json: respiza, include: :pizza
        else
            render json: { error: "ERROR" }, status: :not_found
        end
    end

    private
    def params_price
        params.permit(:price,:restaurant_id,:pizza_id)
    end

end
