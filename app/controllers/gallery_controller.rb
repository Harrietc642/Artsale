class GalleryController < ApplicationController
  def index
    @artworks = Artwork.order("title ASC").page(params[:page])
    #session[:shopping_cart] ||= [] #default value
    #session[:shopping_cart] += 1
    #@shopping_cart = session[:shopping_cart]
  end

  def show
    @artwork = Artwork.find(params[:id])
  end
end
