class PassengerMailer < ApplicationMailer
  default from: "flightbooker@gmail.com"

  def confirmation_email
    @passenger = params[:passenger]
    @flight = params[:flight]
    mail(to: @passenger.email, subject: "Thank you for booking with First Class Flights") 
  end
end
