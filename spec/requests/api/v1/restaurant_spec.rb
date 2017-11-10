require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do
  describe 'GET /v1/restaurants' do
    context 'return 1 restaurant' do
      let!(:restaurant) {create(:restaurant, name: 'Kimchistan', address: 'Hötorgsgången', phonenumber:0766333552, hours:'10-19', description:'yummy korean food', order_hours:'10-18:30')}

      it 'should return a restaurant' do
        get '/api/v1/restaurants'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('restaurant.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end
  end
end
