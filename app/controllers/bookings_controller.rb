class BookingsController < ApplicationController
  # before_action :set_flat, only: [ :new, :show, :create, :destroy]

  def new
    @user = current_user
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    if @booking.save
      redirect_to perfils_show_path
    else
      render 'flats/show'
    end
  end

  def edit
  end


  def destroy
    @booking.destroy
    redirect_to bookings, notice: 'Booking was successfully destroyed.'
  end

  private

  # def set_flat
  #   @flat = Flat.find(params[:flat])
  # end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :flat_id, :animal_id)
  end
end