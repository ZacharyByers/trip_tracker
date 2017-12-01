class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = current_user.trips.all
  end

  def show
  end

  def new
    @trip = current_user.trips.new
<<<<<<< HEAD
=======
  end

  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render: new
    end
>>>>>>> first commit.
  end

  def edit
  end

<<<<<<< HEAD
  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
=======
  def update
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render: edit
>>>>>>> first commit.
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private
<<<<<<< HEAD

  def trip_params
    params.require(:trip).permit(:name, :date)
  end

  def set_trip
    @trip = current_user.trips.find(params[:id])
  end
=======
    def trip_params
      params.require(:trip).permit(:name, :date)
    end

    def set_trip
      @trip = current_user.trips.find(params[:id])
    end
>>>>>>> first commit.
end
