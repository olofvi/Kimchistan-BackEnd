require 'rails_helper'

RSpec.describe Api::V1::PaymentsController, type: :request do
  describe 'GET /v1/payments' do
    context 'return 1 customer' do
      # let!(:payment) {create(:payment, stripeEmail: 'example@example.com')}

      it 'should return a costumer' do
        get '/api/v1/payments'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('payment.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end
  end
end
