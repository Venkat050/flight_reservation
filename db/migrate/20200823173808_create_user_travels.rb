class CreateUserTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :user_travels do |t|
      t.integer :noofseat
      t.integer :flight_id
      t.date :date 
      t.integer :user_id
    end
  end
end
