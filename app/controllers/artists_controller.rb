class ArtistsController < ApplicationController
  before_action :set_artist, only: :show
  def index
    @artists = Artist.all
  end

  def show
  end

  def create
    @restaurant = Restaurant.new(artist_params)
    @restaurant.save
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
