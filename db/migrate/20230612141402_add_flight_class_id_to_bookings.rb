class AddFlightClassIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flight_class, null: false, foreign_key: true
  end
end
