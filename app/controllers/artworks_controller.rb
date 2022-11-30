class ArtworksController < ApplicationController
  def index
    #sucess without dropdown menu
    @q = Artwork.ransack(params[:q])
    @resu = @q.result(:distinct => true).includes(:inspiration)
    @artworks = Artwork.joins(:inspiration).order("title ASC").page(params[:page])

    #gallery [1]
    #@artworkss = Artwork.order("title ASC").page(params[:page])


   # @artworks = Artwork.joins(:inspiration).order("title ASC").page(params[:page]).where()
  end

  def show
    @artwork = Artwork.find(params[:id])
    #@inspiration = Inspiration.find(params[:id])


  end


end




