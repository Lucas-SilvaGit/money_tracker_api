class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|

      t.timestamps
    end
  end
end
