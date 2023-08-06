class Transaction < ApplicationRecord
  belongs_to :transactable, polymorphic: true

  validates :description, :transaction_date, :value, :status, :category, presence: true
end
