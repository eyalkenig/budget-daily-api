class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.text :description
      t.integer :amount
      t.boolean :active
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
