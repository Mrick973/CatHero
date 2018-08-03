class BookingsController < ApplicationController
  # before_action :set_flat, only: [ :new, :show, :create, :destroy]

  def new
    #@flat = Flat.find(params[:flat])
    @user = current_user
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def show
    @user = current_user
    @bookings
  end

  def create
    @flat = Flat.find(params[:booking][:flat_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.save
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'flats/show'
    end
  end

  # def edit
  # end


  # def destroy
  #   @booking.destroy
  #   redirect_to bookings, notice: 'Booking was successfully destroyed.'
  # end

  private

  # def set_flat
  #   @flat = Flat.find(params[:flat])
  # end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :flat_id, :animal_id)
  end
end