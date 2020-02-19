class Track < ApplicationRecord
  belongs_to :media_type
  belongs_to :album
  belongs_to :genre

  def artist
    album.artist
  end
end
