class Flight < ApplicationRecord
    belongs_to :airline 
    belongs_to :origin_airport, class_name: 'Airport'
    belongs_to :destination_airport, class_name: 'Airport'
    has_many :bookings
    has_many :passengers
end
