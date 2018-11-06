class VehiclesController < ApplicationController

  def home

  end

  def index
    @vehicles = Vehicle.all
  end

  def new

  end

  def create
    Vehicle.create(vehicle_params)
    redirect_to "/vehicles"
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to "/vehicles"
  end

  def destroy
    vehicle = Vehicle.find(params[:id])
    vehicle.destroy
    redirect_to '/vehicles'
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:make_and_model, :year, :transmission, :door_count, :color)
  end

end
