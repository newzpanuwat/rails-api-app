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

  describe "#POST" do
    describe "#create" do
      context 'with valid parameters' do
        before do
          post "#{API_V1}/articles", params:
                            { article: {
                              title: 'Cat 1',
                              url: 'test url',
                              posted_by: 'someone'
                            } }
        end

        it 'returns the article correctly' do
          expect(json['article']['title']).to eq('Cat 1')
          expect(json['article']['url']).to eq('test url')
          expect(json['article']['posted_by']).to eq('someone')
        end

        it 'returns a created status' do
          expect(response).to have_http_status(:created)
        end
      end

      context 'with invalid parameters' do
        before do
          post "#{API_V1}/articles", params:
                            { article: {
                              title: '',
                              url: 'test url',
                              posted_by: 'someone'
                            } }
        end

        it 'returns a bad request status' do
          expect(response).to have_http_status(:bad_request)
        end
      end
    end
  end
end
