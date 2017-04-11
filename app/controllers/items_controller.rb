class ItemsController < ApplicationController
  before_action :find_item, only: [:destroy]
  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  def show
  end

  def new
    @item = Item.new
    @items = Item.all
  end

  def edit
  end

  def index
    @items = Item.all
  end

  private
    def item_params
      params.require(:item).permit(:text, :image)
    end
    def find_item
      @item = Item.find(params[:id])
    end
end
