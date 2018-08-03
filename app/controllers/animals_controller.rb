class AnimalsController < ApplicationController
 before_action :set_user, only: [:new, :create, :destroy]

  def new
    @animal = @user.animals.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = @user
    if @animal.save
      redirect_to perfils_show_path
    else
      render :new
    end
  end

    def destroy
   @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to perfils_show_path, notice: 'Booking was successfully destroyed.'
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
