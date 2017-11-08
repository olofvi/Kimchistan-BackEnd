require 'rails_helper'

RSpec.describe Api::V1::DishesController, type: :request do
  describe 'GET /v1/dishes' do
    let!(:dish) {FactoryBot.create(:dish, name: 'dumplings', price: 89)}

    it 'should return dishes' do
      get '/api/v1/dishes'

      expect(response.status).to eq 200
      expected_response = {"data"=>
                               [{"id"=>"#{dish.id}",
                                 "type"=>"dishes",
                                 "attributes"=>
                                     {"name"=>"dumplings",
                                      "price"=>89}}]}
      expect(response_json).to eq expected_response
    end
  end
end
