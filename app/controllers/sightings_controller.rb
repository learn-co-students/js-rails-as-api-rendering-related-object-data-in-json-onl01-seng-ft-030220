class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: sightings, include: [:bird, :location]
  end
  def show
    sighting = Sighting.find_by(id: params[:id])
    if sighting
      render json: sighting.slice(:id, :bird, :location, :created_at)
    else
      render json: {message: "No sighting found with that id"}
    end
  end
end
