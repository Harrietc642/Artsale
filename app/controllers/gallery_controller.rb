class GalleryController < ApplicationController
  def index
    @artworks = Artwork.order("title ASC").page(params[:page])
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end
