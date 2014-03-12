class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.date :birthday
      t.string :country
      t.string :email, null: false
    end
  end
end
