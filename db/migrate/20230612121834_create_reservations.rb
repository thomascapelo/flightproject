class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :booking_status
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
