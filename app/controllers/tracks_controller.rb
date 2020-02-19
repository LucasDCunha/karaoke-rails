class TracksController < ApplicationController
  before_action :set_track, only: :show
  def index
    @tracks = Track.all
  end

  def show
  end

  def create
    @track = Track.new(track_params)
    @track.save
  end

  def set_track
    @track = Track.find(params[:id])
  end

  private

  def track_params
    params.require(:track).permit(:name, :album_id, :genre_id, :composer)
  end
end
