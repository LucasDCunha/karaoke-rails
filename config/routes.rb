Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ARTIST ROUTING

  get 'artists', to: 'artists#index', as: :artist_all
  get 'artists/:id', to: 'artists#show', as: :artist_show
  post 'artists', to: 'artists#create', as: :artist_create

end
