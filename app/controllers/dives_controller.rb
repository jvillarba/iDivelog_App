class DivesController < ApplicationController
  def index
    @dives = Dive.all
  end

  def show
    @places = Place.all

    @dive = Dive.find(params[:id])
  end

  def new
    @dive = Dive.new
  end

  def create
    @dive = current_user.dives.new(dive_params)
    if @dive.save
      redirect_to dives_path
    end
  end

  def edit
    @dive = Dive.find(params[:id])
  end

  def update
    @dive = Dive.find(params[:id])
    if @dive.update_attributes(dive_params)
      redirect_to dive_path @dive
    else
      redirect_to edit_dive_path @dive
    end
  end

  def destroy
    @dive = Dive.find(params[:id])
    @dive.destroy
    redirect_to dives_path
  end

  private
  def dive_params
    params.require(:dive).permit(:number, :date, :timein, :timeout, :depth, :bottom_time, :air_start, :air_end, :nitrox, :temperature, :weight, :computer, :place_id)
  end
end
