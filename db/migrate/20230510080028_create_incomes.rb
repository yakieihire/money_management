class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.integer :income_amount, null: false
      t.date :register_day, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end