class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :increment_visit_count, only: %i[index show destroy]
  before_action :load_cart


  def add_to_cart
    #id = params[:id].to_i
    #session[:cart] << id unless session[:cart].include?(id)
    session[:cart] << params[:id]
    redirect_to(gallery_index_path, notice: 'Item added!')
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to gallery_index_path
  end

  private
  def initialize_session
    session[:visit_count] ||= 0
    session[:cart] ||= []
  end

  def load_cart
    #@cart = session[:cart]
    @cart = Artwork.find(session[:cart])
  end

  def increment_visit_count
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end
end