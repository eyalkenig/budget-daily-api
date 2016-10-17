class CreateSetups < ActiveRecord::Migration[5.0]
  def change
    create_table :setups do |t|
      t.string :name
      t.text :description
      t.bool :active
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
