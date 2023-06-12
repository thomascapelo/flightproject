# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create flight classes
economy_class = FlightClass.create!(class_name: "Economy")
business_class = FlightClass.create!(class_name: "Business")
first_class = FlightClass.create!(class_name: "First Class")    

# Create airports
jfk_airport = Airport.create!(name: "John F. Kennedy International Airport", code: "JFK", city: "New York", country: "USA")
lax_airport = Airport.create!(name: "Los Angeles International Airport", code: "LAX", city: "Los Angeles", country: "USA")
ord_airport = Airport.create!(name: "O'Hare International Airport", code: "ORD", city: "Chicago", country: "USA")

# Create airlines
airline1 = Airline.create!(name: "Airline 1")
airline2 = Airline.create!(name: "Airline 2")

# Create flights
Flight.create!(departure_time: DateTime.now + 1.day, arrival_time: DateTime.now + 1.day + 4.hours, departure_city: "New York", arrival_city: "Los Angeles", price: 300, origin_airport: jfk_airport, destination_airport: lax_airport, airline: airline1)
Flight.create!(departure_time: DateTime.now + 2.days, arrival_time: DateTime.now + 2.days + 5.hours, departure_city: "Los Angeles", arrival_city: "New York", price: 350, origin_airport: lax_airport, destination_airport: jfk_airport, airline: airline2)
Flight.create!(departure_time: DateTime.now + 3.days, arrival_time: DateTime.now + 3.days + 6.hours, departure_city: "Chicago", arrival_city: "Los Angeles", price: 400, origin_airport: ord_airport, destination_airport: lax_airport, airline: airline1)


# Create booking statuses
confirmed_status = BookingStatus.create!(status: "Confirmed")
pending_status = BookingStatus.create!(status: "Pending")

# Create passengers
passenger1 = Passenger.create!(first_name: "John", last_name: "Doe", email: "john@example.com")
passenger2 = Passenger.create!(first_name: "Jane", last_name: "Fitz", email: "jane@example.com")

# Create bookings
Booking.create!(flight: Flight.first, passenger: passenger1, booking_status: confirmed_status, seat_number: 1, bagage: "Carry-on", flight_class: economy_class)
Booking.create!(flight: Flight.second, passenger: passenger2, booking_status: pending_status, seat_number: 2, bagage: "Checked", flight_class: business_class)

    