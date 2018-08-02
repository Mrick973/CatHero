class AnimalsController < ApplicationController
 before_action :set_user, only: [:new, :create, :destroy]

  def new
    @animal = @user.animals.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = @user
    if @animal.save
      redirect_to flats_path
    else
      render :new
    end
  end

    def destroy
    @user = current_user
    @animal.last.user.destroy
    redirect_to flats_path, notice: 'Booking was successfully destroyed.'
  end

 private

  def set_user
    # @user = User.find(params[:user_id])
    @user = current_user
  end

  def animal_params
    params.require(:animal).permit(:species, :name, :user_id)
  end
end