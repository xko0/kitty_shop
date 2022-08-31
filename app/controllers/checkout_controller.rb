class CheckoutController < ApplicationController

	def create
    @total = params[:total].to_d
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        price_data: {
          currency: 'eur',
          product_data: {
            name: 'Panier',
          },
          unit_amount: (@total*100).to_i,
        },
        quantity: 1,
      }],
      mode: 'payment',
      success_url: checkout_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: checkout_cancel_url
    )
    respond_to do |format|
      format.js # renders create.js.erb
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
    @order = Order.create(user: current_user)
    @order.fill(find_cart)
    UserMailer.user_order(@order).deliver_now
  end

  def cancel
  end

end
