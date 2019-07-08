Rails.application.routes.draw do

  # get "songs/index"
  # get "songs/new"
  # get "songs/show"
  # get "songs/edit"
  # get "playlists/index"
  # get "playlists/show"
  # get "playlists/new"
  # get "playlists/edit"
  # get "users/show"
  # get "users/new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create, :show, :destroy]
  resources :playlists
  # may need to remove :playsong
  resources :playsongs
  resources :songs
end
