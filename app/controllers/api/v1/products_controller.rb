class Api::V1::ProductsController < ApplicationController

  def index
    dishes = Dish.all
    render json: dishes
  end
end
