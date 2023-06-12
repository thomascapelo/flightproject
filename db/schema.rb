# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_12_141402) do
  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booking_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "seat_number"
    t.string "bagage"
    t.integer "flight_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "passenger_id", null: false
    t.integer "booking_status_id", null: false
    t.integer "flight_class_id", null: false
    t.index ["booking_status_id"], name: "index_bookings_on_booking_status_id"
    t.index ["flight_class_id"], name: "index_bookings_on_flight_class_id"
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
    t.index ["passenger_id"], name: "index_bookings_on_passenger_id"
  end

  create_table "flight_classes", force: :cascade do |t|
    t.string "class_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "arrival_time"
    t.datetime "departure_time"
    t.string "arrival_city"
    t.string "departure_city"
    t.float "price"
    t.integer "origin_airport_id"
    t.integer "destination_airport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "airline_id", null: false
    t.index ["airline_id"], name: "index_flights_on_airline_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "street"
    t.string "city"
    t.string "zipp_code"
    t.string "country"
    t.string "tel_home"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "booking_status"
    t.integer "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reservations_on_booking_id"
  end

  add_foreign_key "bookings", "booking_statuses"
  add_foreign_key "bookings", "flight_classes"
  add_foreign_key "bookings", "flights"
  add_foreign_key "bookings", "passengers"
  add_foreign_key "flights", "airlines"
  add_foreign_key "reservations", "bookings"
end
