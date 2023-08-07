require 'rails_helper'

RSpec.describe Income, type: :model do
  it 'has one Transaction' do
    expect(Income.reflect_on_association(:transaction_item).macro).to eq(:has_one) 
  end
end
