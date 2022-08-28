class CreateSpendings < ActiveRecord::Migration[7.0]
  def change
    create_table :spendings do |t|
      t.integer :amount
      t.text :spent_on
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
