require 'rails_helper'

RSpec.describe Api::V1::TransactionsController, type: :controller do
  describe "GET /index" do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      transaction = FactoryBot.create(:transaction)
      get :show, params: { id: transaction.id }
      expect(response).to be_successful
    end
  end
end
