class BookingsController < ApplicationController
  def new
    if params[:flight_choice].blank?
      redirect_to root_path, notice: "You must choose a flight!"
    else
      @booking = Booking.new
      @passengers = params[:passengers]
      @flight = Flight.find(params[:flight_choice])
      @passengers.to_i.times { @booking.passengers.build }
    end
  end

end
