class OrdersController < ApplicationController
  
  def index
    @orders = Order.all
  end
  def edit
    @order = Order.find(params[:id])
  end
  def update
   @order =  Order.find(params[:id])
   @order.update(restaurant_id: params[:restaurant][:id], date: @date)
   orderitemsarray =  @order.order_items

   orderitemsarray[0].update(order_id: @order.id, item_id: params[:items][:item_1])
   orderitemsarray[1].update(order_id: @order.id, item_id: params[:items][:item_2])
   orderitemsarray[2].update(order_id: @order.id, item_id: params[:items][:item_3])
   
  

   redirect_to order_path(@order.id)
  
  end

  def destroy
    #byebug
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end
  def create
    @date = Time.new.strftime "%D"
    @order = Order.create(restaurant_id: params[:restaurant][:id], date: @date)
    OrderItem.create(order_id: @order.id, item_id: params[:items][:item_1])
    OrderItem.create(order_id: @order.id, item_id: params[:items][:item_2])
    OrderItem.create(order_id: @order.id, item_id: params[:items][:item_3])
    redirect_to  @order
  end

  

  
  def show
  @order = Order.find(params[:id])
    
  end

  


end
