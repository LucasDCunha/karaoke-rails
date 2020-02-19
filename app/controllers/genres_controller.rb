class GenresController < ApplicationController
  before_action :set_genre, only: :show
  def index
    @genres = Genre.all
  end

  def show
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
