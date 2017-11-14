require 'rails_helper'

RSpec.describe Api::V1::PaymentsController, type: :request do
  describe 'GET /v1/payments' do
    context 'return 1 customer' do

      StripeMock.start
      customer = Stripe::Customer.create(
          :email => 'me@me.com',
          :card => 'valid_card_token'
      )
      end
    end
  end

