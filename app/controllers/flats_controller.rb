class FlatsController < ApplicationController
 before_action :set_user, only: [:new, :show, :index, :create, :destroy]

  def new
    @flat = @user.flats.new
  end

  def index
    @flats = Flat.all
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = @user
    if @flat.save
       redirect_to flats_path(@flat)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, notice: 'Booking was successfully destroyed.'
  end

 private

  def set_user
    #@user = User.find(params[:user])
    @user = current_user
  end

  def flat_params
    params.require(:flat).permit(:description, :address)
  end
end
