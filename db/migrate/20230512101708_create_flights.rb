class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :arrival_time
      t.datetime :departure_time
      t.string :arrival_city
      t.string :departure_city
      t.float :price
      t.integer :origin_airport_id
      t.integer :destination_airport_id

      t.timestamps
    end
  end
end
