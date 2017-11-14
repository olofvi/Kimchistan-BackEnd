require 'rails_helper'

RSpec.describe Api::V1::PaymentsController, type: :request do
  describe 'GET /v1/payments' do
    before { StripeMock.start }
    after { StripeMock.stop }
    context 'return 1 customer' do

      # StripeMock.start
      # let!(:customer) {Stripe::Customer.create(
      #     :email => 'me@me.com',
      #     :card => 'valid_card_token'
      # )}
    end
  end

  describe 'POST /api/v1/payments' do
    let(:stripe_helper) { StripeMock.create_test_helper }
    before { StripeMock.start }
    after { StripeMock.stop }
    let!(:customer) {Stripe::Customer.create(
        :email => 'me@me.com',
        :card => stripe_helper.generate_card_token
    )}
    it 'creates a data entry' do
      post '/api/v1/payments', params: {
          payment: {data: {email: 'me@me.com', token: customer.card}}
      }

      expect(response.status).to eq 200
    end
  end
end


