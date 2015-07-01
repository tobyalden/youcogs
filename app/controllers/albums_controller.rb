class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    result = Album.where(discogs_id: params['id']).first
    if result
      @album = result
    else
      @album = Album.new(discogs_id: params['id'])
      @album.populate_properties
    end
  end

  def create
    @album = Album.new(discogs_id: params['album']['discogs_id'])
    @album.populate_properties
    @album.save
    redirect_to albums_path
  end

end
