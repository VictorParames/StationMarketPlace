class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @user = current_user.id
    @orders = Order.new
  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to items_path, notice: "Item successfully added to StationMarketPlace!"
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    @user = current_user.id
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to items_path, notice: "Item successfully patched"
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :categories)
  end
end
