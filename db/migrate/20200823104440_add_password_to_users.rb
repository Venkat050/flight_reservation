class AddPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    if column_exists? :users, :flight_id 
      remove_column :users, :flight_id
    end
    if column_exists? :users, :noofseat
      remove_column :users, :noofseat
    end

    add_column :users, :password_digest, :string
  end
end
