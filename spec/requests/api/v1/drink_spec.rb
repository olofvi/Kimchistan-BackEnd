require 'rails_helper'

RSpec.describe Api::V1::DrinksController, type: :request do
  describe 'GET /v1/drinks' do
    context 'return 1 drink' do
      let!(:drink) {create(:drink, name: 'coca-cola', price: 15)}

      it 'should return drinks' do
        get '/api/v1/drinks'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('drink.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end

    context 'return 5 drinks' do
      before do
        5.times {create(:drink)}
      end

      it 'gets 5 drinks' do
        get '/api/v1/drinks'

        expect(response_json['data'].count).to eq 5
      end
    end
  end
end