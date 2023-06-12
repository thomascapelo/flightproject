class Booking < ApplicationRecord
  belongs_to :flight
  belongs_to :reservation
  belongs_to :passenger
  belongs_to :flight_class
end
