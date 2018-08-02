class PerfilsController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    # @users
    @user = current_user
  end

  def edit
  end

  def update #a modifier
    # @user = current_user
    # if @user.flats.update(user_params)
    #   redirect_to @perfil, notice: 'Perfil was successfully updated.'
    # else
    #   render :edit
    # end
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
