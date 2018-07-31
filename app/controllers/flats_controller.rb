class FlatsController < ApplicationController
  def new
    @flat = Flat.new
  end

  def index
    @flats = Flat.all
  end

    def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path(@flats)
    else
      render :new
    end
  end
 private
  def flat_params
    params.require(:flat).permit(:description, :address)
  end
end
