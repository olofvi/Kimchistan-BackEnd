class Api::V1::DishesController < ApplicationController

  def index
    dishes = Dish.all
    render json: dishes
  end
end
