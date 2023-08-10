require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe " Financial transactions" do
    context "when has attributes" do
      it "is valid with valid attributes" do
        transaction = build(:transaction)
        expect(transaction).to be_valid
      end
    end

    context "when not has attributes" do
      it "is invalid without a description" do
        transaction = build(:transaction, description: nil)
        expect(transaction).to be_invalid
      end
    
      it "is invalid without a transaction_date" do
        transaction = build(:transaction, transaction_date: nil)
        expect(transaction).to be_invalid
      end
    
      it "is invalid without a value" do
        transaction = build(:transaction, value: nil)
        expect(transaction).to be_invalid
      end
    
      it "is invalid without a status" do
        transaction = build(:transaction, status: nil)
        expect(transaction).to be_invalid
      end
    
      it "is invalid without a category" do
        transaction = build(:transaction, category: nil)
        expect(transaction).to be_invalid
      end
    end
  end
end
