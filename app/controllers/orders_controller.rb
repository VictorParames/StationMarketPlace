class OrdersController < ApplicationController
  before_action :authenticate_user!


  def new
    @order = Order.new
    @items = Item.all
  end


  def create
    @item = Item.find(params[:item_id])
    @order = current_user.orders.build(item: @item, status: 'pending')

    if @order.save
      redirect_to @order, notice: "Order placed successfully."
    else
      render :new
    end
  end


  def show
    @order = Order.find(params[:id])
  end


  def buy
    @order = Order.find(params[:id])

    if @order.user == current_user && @order.status == 'pending'
      @order.mark_as_purchased
      redirect_to @order, notice: "Order purchased successfully."
    else
      redirect_to @order, alert: "You cannot buy this order."
    end
  end
end
