class CheckoutController < ApplicationController
  #   def create
  #     @artwork = Artwork.find(params[:id])
  #     redirect_to gallery_index_path if @artwork.nil?
  #
  #     @session = Stripe::Checkout::Session.create(
  #       # customer: current_user.id,
  #       payment_method_types: [:card],
  #       success_url:          checkout_sucess_url,
  #       cancel_url:           checkout_cancel_url,
  #       line_items:           [
  #         price:    66,
  #         quantity: 1
  #       ],
  #       mode:                 "payment"
  #     )
  #     redirect_to @session.url
  #
  #     respond_to do |format|
  #       format.js
  #       # render 'app/views/checkout/create.js.erb'
  #     end
  #   end
  def sucess; end

  def cancel; end
end
