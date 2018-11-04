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
    redirect_to "/index"
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:make_and_model, :year, :automatic, :door, :color)
  end

end
