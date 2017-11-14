class Api::V1::PaymentsController < ApplicationController
  def index
    @amount = 500

    customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
    )

    # binding.pry
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
