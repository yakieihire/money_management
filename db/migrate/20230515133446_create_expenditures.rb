class CreateExpenditures < ActiveRecord::Migration[6.0]
  def change
    create_table :expenditures do |t|
      t.integer :category_id, null: false
      t.integer :expenditure_amount, null: false
      t.date :register_day, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
