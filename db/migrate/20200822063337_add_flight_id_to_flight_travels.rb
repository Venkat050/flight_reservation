class AddFlightIdToFlightTravels < ActiveRecord::Migration[6.0]
  def change
    add_column :flight_travels, :flight_id, :integer
  end
end
