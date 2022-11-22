require 'rails_helper'

RSpec.describe "Api::V1::Articles", type: :request do
  API_V1 = '/api/v1'

  describe "#GET" do
    describe "#index" do
      before do 
        FactoryBot.create_list(:article, 5)
        get "#{API_V1}/articles"
      end

      it 'returns articles' do
        expect(json.size).to eq(5)
      end

      it 'returns status code 200' do
        expect(response.status).to eq(200)
      end
    end
  end
end
