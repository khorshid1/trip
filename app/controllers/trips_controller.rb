class TripsController < ApplicationController

	def index 
		@trips = Pack.all
	end

	def show
		@trip = Trip.find_by(id: params["id"])
	end

  def new
    @trip = Trip.new
  end

  def create
    trip_params = params.require(:trip).permit!
    Trip.create(trip_params)
    redirect_to trips_path
  end

  def edit
    @trip = Trip.find_by(id: params["id"])
  end

  def update
    trip_params = params.require(:trip).permit!
    @trip = Trip.find_by(id: params["id"])
    @trip.update(trip_params)
    redirect_to trips_path
  end

  def destroy
    @trip = Trip.find_by(id: params["id"])
    @trip.destroy
    redirect_to trips_path
  end

end