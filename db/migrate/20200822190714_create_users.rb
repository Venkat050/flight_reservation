class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :flight_id
      t.integer :noofseat
    end
  end
end
