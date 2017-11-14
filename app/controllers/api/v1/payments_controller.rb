class Api::V1::PaymentsController < ApplicationController

  def create
    @amount = 500
    
    customer = Stripe::Customer.create(
        email: params[:payment][:data][:email],
        source: params[:payment][:data][:token]
    )

    charge = Stripe::Charge.create(
        customer: customer.id,
        amount: @amount,
        description: 'Best kimchistan order',
        currency: 'sek'
    )

    render json: ({charge: charge})
  end

  private

  def payment_params
    params.permit[:data][:attributes]
  end
end
