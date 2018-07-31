class FlatsController < ApplicationController
 before_action :set_user, only: [:new, :index, :create]

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
       redirect_to flats_path(@flat.user)
    else
      render :new
    end
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
