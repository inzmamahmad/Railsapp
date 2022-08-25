class ApplicationController < ActionController::Base

	  before_action :authenticate_user!
before_action :initialize_session
before_action :count_total

private
def initialize_session
	session[:cart] ||=[]
end
def count_total
	session[:total] ||=0
end
def count_product
	session[:total_cart_items] ||=0
	end
end
