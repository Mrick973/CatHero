class PerfilsController < ApplicationController
   before_action :set_cocktail, only: [:show]

  def index
  end

    def show 
    @users
    end  
    def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

      def set_booking
      @booking = Booking.find(params[:id])
    end
    def booking_params
      params.require(:booking).permit(:status, :start_date, :end_date)
    end
end
