class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :increment_visit_count, only: %i[index show destroy]
  before_action :load_cart

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def add_to_cart
    id = params[:id].to_i
    #session[:cart] << id unless session[:cart].include?(id)
    session[:cart] << id

    redirect_to(gallery_index_path, notice: 'Item added!')
  end

  def remove_from_cart
    id = params[:id].to_i
    #id = Artwork.find(params[:id].to_i)
    session[:cart].delete(id)
    redirect_to gallery_index_path
  end

  def checkout
    @cart_checkout = Artwork.find(session[:cart])
  end
  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,
        keys: [:username, :name, :email, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:sign_in,
        keys: [:login, :password, :password_confirmation])
      devise_parameter_sanitizer.permit(:account_update,
        keys: [:username, :name, :email, :password_confirmation, :current_password])
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