class InspirationsController < ApplicationController
  def index
    @inspirations = Inspiration.all
  end

  def show
    @inspiration = Inspiration.find(params[:id])
  end
end
