class AddBookingStatusIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :booking_status, null: false, foreign_key: true
  end
end
