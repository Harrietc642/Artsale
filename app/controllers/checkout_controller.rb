class CheckoutController < ApplicationController
  def create
    @artwork = Artwork.find(params[:id])
    if @artwork.nil?
      redirect_to gallery_index_path
    end

    @session = Stripe::Checkout::Session.create(
      #customer: current_user.id,
      payment_method_types: [:card],
      success_url:          checkout_sucess_url,
      cancel_url:           checkout_cancel_url,
      line_items: [
        name: @artwork.title,
        description: @artwork.brand,
        amount: @artwork.price.to_i,
        currency: "cad",
        quantity: 1
      ],
      mode: 'payment'
    )
    redirect_to @session.url

    respond_to do |format|
      format.js
      #render 'app/views/checkout/create.js.erb'
    end
  end

  def sucess

  end

  def cancel

  end

end
