class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(article_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def create
    @item = Item.new(article_params)
    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end
  private

  def article_params
    params.require(:item).permit(:event, :description, :time)
  end
end
