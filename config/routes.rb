Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ARTIST ROUTING

  get 'artists', to: 'artists#index', as: :artist_all
  get 'artists/:id', to: 'artists#show', as: :artist_show
  post 'artists', to: 'artists#create', as: :artist_create

  # GENRE ROUTING

  get 'genres', to: 'genres#index', as: :genre_all
  get 'genres/:id', to: 'genres#show', as: :genre_show
  post 'genres', to: 'genres#create', as: :genre_create

  # ALBUM ROUTING

  get 'albums', to: 'albums#index', as: :album_all
  get 'albums/:id', to: 'albums#show', as: :album_show
  post 'albums', to: 'albums#create', as: :album_create

  # TRACK ROUTING

  get 'tracks', to: 'tracks#index', as: :track_all
  get 'tracks/:id', to: 'tracks#show', as: :track_show
  post 'tracks', to: 'tracks#create', as: :track_create
end
