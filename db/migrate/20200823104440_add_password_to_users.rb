class AddPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :flight_id
    remove_column :users, :noofseat
    add_column :users, :password_digest, :string
  end
end
