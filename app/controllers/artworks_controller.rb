class ArtworksController < ApplicationController
  def index
    #@q = Artwork.ransack(params[:q])
    #@resu = @q.result
    @q = Artwork.ransack(params[:q])
    @resu = @q.result

    #@artworks = @q.result.(distinct: true).order("title ASC").page(params[:page])
    @artworks = Artwork.order("title ASC").page(params[:page])

  end

  def show
    @artwork = Artwork.find(params[:id])
    #@inspiration = Inspiration.find(params[:id])
  end
end
