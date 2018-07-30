class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

    def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end
    def booking_params
      params.require(:booking).permit(:status, :start_date, :end_date)
    end
end
