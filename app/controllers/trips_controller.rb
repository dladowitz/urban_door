class TripsController < ApplicationController
  def index
    trips = Trip.create_trips_array
    render json: trips, status: 200
  end
end
