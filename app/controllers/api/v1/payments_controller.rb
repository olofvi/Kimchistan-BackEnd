class Api::V1::PaymentsController < ApplicationController
  def create
    @amount = 500
    binding.pry

    customer = Stripe::Customer.create(
        email: params[:email],
        source: params[:token]
    )

    charge = Stripe::Charge.create(
        customer: customer.id,
        amount: @amount,
        description: 'Best kimchistan order',
        currency: 'sek'
    )
  rescue Stripe::CardError => e
    # flash[:error] = e.message
    # redirect_to new_charge_path
  end
end
