class ShipmentsController < ApplicationController

  def index
    @shipings = Shiping.all
  end
  
  def new
  @shiping = Shiping.new
  end
  def create
      @carts = session[:cart]
      @order = Order.create(subtotal:session[:total], user_id: current_user.id, discount:0, total:session[:total], total_items:@carts.size, status: 'Unpaid')
          @carts.each do |cart|

           # @product = Idea.find_by(id: cart["product_id"])
            #@order_item = IdeaItem.create(quantity: cart["product_quantity"], idea_id: @product.id, unit_price:@product.price)
           # @order_item.idea_id = @product.id
                 product = Idea.find_by(id: cart["product_id"])
      @order_item = @order.idea_items.build(quantity: cart["product_quantity"], idea_id: product.id, unit_price:product.price)
            @order_item.save
          end  
          if Shiping.select{|ship| ship.user_id == current_user.id}.present?
              redirect_to order_path(@order.id), notice: "Shipping details of current user already exist."       
          else
     
            @shipping = Shiping.new(shiping_params)
            @shipping.user = current_user     
      
          if @shipping.save
              redirect_to order_path(@order.id), notice: "Order was successfully submitted."       
          else
             'checkouts/index'
          end
  end
      session[:cart] = nil
    session[:total] = nil
  end
  def edit
    @shipping = Shiping.find(params[:id])
  end
  def update
    
      @shipping = Shiping.find(params[:id])
      if @shipping.update(shiping_params)
        redirect_to shippings_path, notice: "Shipping was successfully updated." 
      else
        render 'edit'
      end
   
    
  end
  private
  def shiping_params
    params.require(:shiping).permit(:fname, :lname, :email, :phone, :address, :city, :status, :zip, :user_id)
 
    
  end
end


