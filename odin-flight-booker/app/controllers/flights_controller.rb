class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @date_year = @flights.map{ |f| f.datetime.year }.uniq
    @date_month = @flights.map{ |f| f.datetime.month }.uniq
    @date_day = @flights.map{ |f| f.datetime.day }.uniq
  end

  private
  def flight_form_params

end
