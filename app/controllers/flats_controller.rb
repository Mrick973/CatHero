class FlatsController < ApplicationController
 before_action :set_user, only: [:new, :show, :index, :create, :destroy]

  def new
    @flat = @user.flats.new
  end

  def index
    # @flats = Flat.all # before add the code in lines [10..18]
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = @user
    if @flat.save
       redirect_to new_flat_booking_path(@flat)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @flat.destroy
    redirect_to flats, notice: 'Booking was successfully destroyed.'
  end

 private

  def set_user
    # @user = User.find(params[:user_id])
    @user = current_user
  end

  def flat_params
    params.require(:flat).permit(:description, :address)
  end
end
