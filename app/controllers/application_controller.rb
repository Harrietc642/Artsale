class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart

  private
  def initialize_session
    #will initialize the visit count to zero for new users
    #session[:visit_count] ||= 0 #default value
    session[:shopping_cart] ||= [] #default empty array of artwork IDs
    @shopping_cart = session[:shopping_cart]
  end
  def cart
    # pass an array of product ids and get back collection of products
    Artwork.find(session[:shopping_cart])
  end
end
