class PizzasController < ApplicationController
    def index
        pizzas = Pizza.all
        render json: pizzas, status: :ok, except: [:created_at, :updated_at]
    end
end
