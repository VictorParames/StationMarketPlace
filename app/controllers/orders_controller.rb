class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
    @total = 0
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

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      flash[:notice] = "Produto removido com sucesso."
      redirect_to items_path
    else
      flash[:alert] = "Erro ao remover o produto."
      redirect_back fallback_location: items_path
    end
  end

  def submit
  end
end
