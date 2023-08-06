FactoryBot.define do
  factory :transaction do
    description { "Receita test"}
    transaction_date { Date.today }
    value {300.00}
    status { "pending" }
    category { "test" }
    association :transactable, factory: :income
  end
end
