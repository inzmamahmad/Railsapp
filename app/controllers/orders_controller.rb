class OrdersController < ApplicationController
  def index
    
  end

  def show
    @order_items = IdeaItem.all
    @order = Order.find(params[:id])
    
    @order_item = @order.idea_items.all
    @shippings = Shiping.all
  end
end
