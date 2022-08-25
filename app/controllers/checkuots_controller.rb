class CheckuotsController < ApplicationController


def index
	

end
def show
	
end
	
def create
		  
	# @amount = 500

  	customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    source: params[:stripeToken]
    )

  charge = Stripe::Charge.create(
    customer: customer.id,

    amount: session[:payment].to_i,
    description: 'Rails Stripe customer',
    currency: 'usd'


  )
        session[:cart] = nil
    session[:total] = nil
    session[:total_cart_items]=0
redirect_to root_path ,notice:"Thanks for payment"
rescue Stripe::CardError => e
  	flash[:error] = e.message
  	redirect_to checkuots_path
end

	
end
