class GalleryController < ApplicationController
  before_action :initialize_session
  before_action :increment_visit_count, only: %i[index]

  def index
    @artworks = Artwork.order("title ASC").page(params[:page])
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def image
    # @images = Artwork.order("title ASC").page(params[:page])
    # @artwork = Artwork.find(params[:id])
  end
end
