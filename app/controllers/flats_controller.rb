class FlatsController < ApplicationController

  def show
    @flat = Flat.find(params[:id])
    @flat_coordinates = { lat: @flat.lat, lng: @flat.lng }
  end

  def index
    @flats = Flat.all
    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

end
