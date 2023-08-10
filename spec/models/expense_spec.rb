require 'rails_helper'

RSpec.describe Expense, type: :model do
  it 'has one Trasaction' do
    expect(Expense.reflect_on_association(:transaction_item).macro).to eq(:has_one)
  end
end
