class AnimalsController < ApplicationController
 before_action :set_user, only: [:new, :create]

  def new
    @animal = @user.animals.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = @user
    if @animal.save
      redirect_to flats_path(@animal.user)
    else
      render :new
    end
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