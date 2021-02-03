class AddFkToBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :flight, foreign_key: true
  end
end
