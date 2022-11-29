class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart.")
  end

  def destroy

  end
end
