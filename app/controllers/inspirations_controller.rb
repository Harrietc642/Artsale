class InspirationsController < ApplicationController
  def index
    @inspirations = Inspiration.all
    @queryy = Artwork.ransack(params[:q])
    @resultt = @queryy.result
    @artworks = Artwork.order("title ASC").page(params[:page])
  end

  def show
    @inspiration = Inspiration.find(params[:id])
    @w = Inspiration.find(params[:id]).id
    r = (@w).to_s
    @queryyys = Artwork.joins(:inspiration).where("inspiration_id like ?", r)
  end
end
