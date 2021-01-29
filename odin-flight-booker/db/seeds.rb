# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([{ code: 'SFO' }, { code: 'NYC' }])
Flight.create([
  { start_airport_id: Airport.first.id, finish_airport_id: Airport.last.id, flight_duration: 320, datetime: "2021-1-27 07:00:00" },
  { start_airport_id: Airport.first.id, finish_airport_id: Airport.last.id, flight_duration: 320, datetime: "2021-1-27 010:00:00" },
  { start_airport_id: Airport.first.id, finish_airport_id: Airport.last.id, flight_duration: 320, datetime: "2021-1-27 013:00:00" },
  { start_airport_id: Airport.last.id, finish_airport_id: Airport.first.id, flight_duration: 340, datetime: "2021-1-27 09:00:00" },
  { start_airport_id: Airport.last.id, finish_airport_id: Airport.first.id, flight_duration: 340, datetime: "2021-1-27 012:00:00" },
  { start_airport_id: Airport.last.id, finish_airport_id: Airport.first.id, flight_duration: 340, datetime: "2021-1-27 015:00:00" }])