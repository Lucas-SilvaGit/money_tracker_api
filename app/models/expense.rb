class Expense < Transaction
  has_one :transaction_item, as: :transactable
end
