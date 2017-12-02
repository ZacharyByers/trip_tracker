class LocationsController < ApplicationController
  before_action :set_trip
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @location = @trip.locations.new
    render 'edit_or_new'
  end

  def edit
    render 'edit_or_new'
  end

  def create
    @location = @trip.locations.new(location_params)
    if @location.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def update
    if @location.update(location_params)
      redirect_to trip_location_path(@trip, @location)
    end
  end

  def destroy
    @location.destroy
    redirect_to trip_path(@trip)
  end

  private

  def location_params
    params.require(:location).permit(:name, :trip_id)
  end

  def set_trip
    @trip = current_user.trips.find(params[:trip_id])
  end

  def set_location
    @location = @trip.locations.find(params[:id])
  end
end
