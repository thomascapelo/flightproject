class CreateFlightClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :flight_classes do |t|
      t.string :class

      t.timestamps
    end
  end
end
