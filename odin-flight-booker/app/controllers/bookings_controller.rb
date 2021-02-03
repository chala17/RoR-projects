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

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking.id), notice: "Your booking has been saved! Safe travels!"
    else
      @flight = Flight.find(booking_params[:flight_id])
      flash.now[:alert] = 'No fields can be left blank!'
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
