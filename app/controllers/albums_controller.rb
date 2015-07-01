class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    # eventually this will check to see if the given ID is already in the database
    @album = Album.new(params['id'])
    @album.populate_properties
  end

  def create
    binding.pry
    @album = Album.new(params['album']['discogs_id'])
    @album.populate_properties
    @album.save
    redirect_to albums_path
  end

end
