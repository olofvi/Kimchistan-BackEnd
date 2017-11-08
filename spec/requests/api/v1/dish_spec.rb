require 'rails_helper'

RSpec.describe Api::V1::DishesController, type: :request do
  describe 'GET /v1/dishes' do
    it 'should return dishes' do
      get '/api/v1/dishes'
      
      expect(response.status).to eq 200
    end
  end
end
