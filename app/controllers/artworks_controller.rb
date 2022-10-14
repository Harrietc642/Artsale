class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.order("title ASC")
  end

  def show
    @artwork = Artwork.find(params[:id])
    #@inspiration = Inspiration.find(params[:id])
  end
end
