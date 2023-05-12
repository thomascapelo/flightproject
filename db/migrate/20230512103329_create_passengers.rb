class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :street
      t.string :city
      t.string :zipp_code
      t.string :country
      t.string :tel_home
      t.string :email

      t.timestamps
    end
  end
end
