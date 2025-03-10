class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
  end

  def create
    @order = Order.new
    @order.user = current_user
    @order.item = Item.find(params[:item_id])
    if @order.save
      redirect_to item_orders_path, notice: "Item requisitioned"
    end
  end
end
