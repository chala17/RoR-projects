class AddFkToFlights < ActiveRecord::Migration[6.0]
  def change
    add_reference :flights, :start_airport, foreign_key: { to_table: :airports }
    add_reference :flights, :finish_airport, foreign_key: { to_table: :airports }
  end
end
