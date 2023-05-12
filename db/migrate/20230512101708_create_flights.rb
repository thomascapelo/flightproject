class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :arrival_time
      t.datetime :departure_time
      t.string :arrival_city
      t.string :departure_city
      t.float :price

      t.timestamps
    end
  end
end
