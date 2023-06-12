class RenameFlightClassColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :flight_classes, :class, :class_name
  end
end
