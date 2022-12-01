class RestaurantPizzasController < ApplicationController
    def index
        restaurant_pizzas = RestaurantPizza.all
        render json: restaurant_pizzas, status: :ok, except: [:created_at, :updated_at]
    end
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
    rescue ActiveRecord::RecordInvalid => e
    render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end

    private
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
