class Api::V1::DishesController < ApplicationController
  before_action :set_default_response_format

  def index
    @dishes = Dish.all
    render json: @dishes
  end

  protected

  def set_default_response_format
    request.format = :json
  end
end
