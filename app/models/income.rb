class Income < ApplicationRecord
  has_one :transaction_item, as: :transactable
end
