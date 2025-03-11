class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  def index
    @items = Item.all
    if params[:query].present?
      sql_subquery = <<~SQL
        items.name @@ :query
        OR items.categories @@ :query
        OR items.description @@ :query
      SQL
      @items = @items.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @item = Item.find(params[:id])
    @user = current_user.id
    @orders = Order.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    @item.user = current_user
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
    if @item.update(item_params)
      redirect_to items_path, notice: "Item successfully patched"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: "Item deleted!"
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :categories)
  end
end
