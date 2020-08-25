class RemoveNoofseatFromFlight < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :noofseat
    add_column :flights, :time, :time
  end
end
