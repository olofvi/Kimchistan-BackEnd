require 'rails_helper'

RSpec.describe Api::V1::OrdersController, type: :request do
  describe 'GET /v1/orders' do
    context 'return 1 order' do
      let!(:order) {create(:order, created_at: '2017-11-10T09:34:11.608Z', updated_at: '2017-11-10T09:34:11.608Z')}

      it 'should return an order' do
        get '/api/v1/orders'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('order.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end
  end
end
