class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.boolean :active
      t.belongs_to :setup, foreign_key: true

      t.timestamps
    end
  end
end
