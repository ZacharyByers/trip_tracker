class AddressesController < ApplicationController
  before_action :set_location
  before_action :set_address, only: [:edit, :update]

  def new
    @address = @location.build_address
    render 'edit_or_new'
  end

  def edit
    render 'edit_or_new'
  end

  def create
    @address = @location.build_address(address_params)
    if @address.save
      redirect_to trip_location_path(@location.trip_id, @location)
    else
      render :new
    end
  end

  def update
    if @address.update(address_params)
      redirect_to trip_location_path(@location.trip_id, @location)
    else
      render :edit
    end
  end

  private

  def address_params
    params.require(:address).permit(:name, :street_address, :zip, :location_id)
  end

  def set_location
    @location = Location.find(params[:location_id])
  end

  def set_address
    @address = @location.address
  end
end
