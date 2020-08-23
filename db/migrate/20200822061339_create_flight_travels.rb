class CreateFlightTravels < ActiveRecord::Migration[6.0]
  def change
    create_table :flight_travels do |t|
      t.date :date
    end
  end
end
