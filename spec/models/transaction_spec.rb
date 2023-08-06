require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:transaction_date) }
  it { is_expected.to validate_presence_of(:value) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to validate_presence_of(:category) }

  it { is_expected.to it belong_to(:transactable) } 
end
