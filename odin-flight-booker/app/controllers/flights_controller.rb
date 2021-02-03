class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @date_year = @flights.map{ |f| f.datetime.year }.uniq
    @date_month = @flights.map{ |f| f.datetime.month }.uniq
    @date_day = @flights.map{ |f| f.datetime.day }.uniq
    if params["specs"]
      @flight_date = Date.civil(specs_params[:dyear].to_i, specs_params[:dmonth].to_i, specs_params[:dday].to_i)
      @available_flights = Flight.where(start_airport_id: specs_params[:from], finish_airport_id: specs_params[:to], datetime: @flight_date.all_day)
      @passengers = specs_params[:passengers]
    end
  end

  private
  
  def specs_params
    params.require(:specs).permit(:from, :to, :passengers, :dyear, :dmonth, :dday)
  end

end
