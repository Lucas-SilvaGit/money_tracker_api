class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :description
      t.date :transaction_date
      t.float :value
      t.string :status
      t.string :category
      t.string :transactable_type
      t.integer :transactable_id

      t.timestamps
    end
  end
end
