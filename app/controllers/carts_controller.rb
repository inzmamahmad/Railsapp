class CartsController < ApplicationController
  def index
    @carts = session[:cart]
    # byebug
  end
  def show

  end
  def new 
  end
  def edit
  end
  def create
    # session[:cart]=nil                           
        product_id = params[:cart] [:product_id].to_i
        product_quantity = params[:cart] [:product_quantity].to_i
         @products = Idea.find_by(id: product_id)

        if session[:cart].select{|cart| cart["product_id"] == product_id}.present?
          session[:cart].find{|cart| cart["product_id"] == product_id} ["product_quantity"] += product_quantity
           session[:total]=session[:total].to_i+(@products.price*product_quantity).to_i
          redirect_to carts_path
        else

          initialize_session << {:product_id => product_id, :product_quantity => product_quantity}
          
          session[:total]=session[:total].to_i+(@products.price*product_quantity).to_i
          redirect_to carts_path
      end
  end
  def update_cart
    product_id = params[:cart] [:product_id].to_i
    @products = Idea.find_by(id: product_id)
    product_quantity = params[:cart] [:product_quantity].to_i
    @subtotal = @products.price*product_quantity
    session[:total] = @subtotal

    if session[:cart].select{|cart| cart["product_id"] == product_id}.present?
      session[:cart].find{|cart| cart["product_id"] == product_id} ["product_quantity"] = product_quantity
#session[:cart].delete(params[:cart] [:product_id].to_i)
      redirect_to carts_path
    end




  end
  # def delete_cart
  #   product_id = params[:product_id].to_i
  #  session[:cart].delete_if {|cart| cart["product_id"] == product_id}
   
  #   redirect_to carts_path
  # end
def destroy
                    
 product_id = params[:id]
   session[:cart].delete_if {|cart| cart["product_id"] == params[:id].to_i}
    #session[:cart].delete(params[:cart][:id].to_i)
   
    redirect_to carts_path
end

end
