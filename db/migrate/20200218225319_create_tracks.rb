class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.references :artist_id, foreign_key: true
      t.references :genre_id, foreign_key: true
      t.string :name
      t.string :composer

      t.timestamps
    end
  end
end
