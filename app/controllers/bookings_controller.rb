class BookingsController < ApplicationController
  before_action :set_flat, only: [ :new, :show, :create, :edit, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    if @booking.save
      redirect_to flats_path(@booking.flat)
    else
      render :new
    end
  end

  def edit
  end


  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])  
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :flat_id, :animal_id)
  end
end