class AnimalsController < ApplicationController

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
  def animal_params
    params.require(:animal).permit(:species, :name, :user_id)
  end
end