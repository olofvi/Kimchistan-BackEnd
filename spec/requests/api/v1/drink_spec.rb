require 'rails_helper'

RSpec.describe Api::V1::DrinksController, type: :request do
  describe 'GET /v1/drinks' do
    let(:headers) {{HTTP_ACCEPT: 'application/json'}}

    context 'return 1 dish' do
      let!(:drinks) {create(:drinks, name: 'coca cola', price: 15)}

      it 'should return drinks' do
        get '/api/v1/drinks'

        expect(response.status).to eq 200
        expected_response = eval(file_fixture('drinks.txt').read)
        expect(response_json).to eq expected_response.as_json
      end
    end

    context 'return 5 dishes' do
      before do
        5.times {create(:drinks)}
      end

      it 'gets 5 drinkd' do
        get '/api/v1/drinks'

        expect(response_json['data'].count).to eq 5
      end
    end
  end
end