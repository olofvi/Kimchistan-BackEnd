class Api::V1::OrdersController < ApplicationController

  def create
    #  params[:data][:attributes][:cart][0]
    pickup_time = Time.now + 30.minutes
    email = params[:data][:attributes][:email]
    cart = params[:data][:attributes][:cart]
  end
end
