class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :email_id
      t.date :date_of_birth

      t.timestamps
    end
  end
end
