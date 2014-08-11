class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  def sort
    @item.sort!
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
      #@item.time = Time.new(params[:item]["time(1i)"],params[:item]["time(2i)"],params[:item]["time(3i)"],params[:item]["time(4i)"],params[:item]["time(5i)"],0,  "-05:00")
      params[:item]["finished_event"] == "true" ? @item.finished_event = true : @item.finished_event = false
      @item.save
      redirect_to @item
    else
      render 'edit'
    end
  end

  def create
    @item = Item.new(article_params)
    if @item.save
      #@item.time = Time.new(params[:item]["time(1i)"],params[:item]["time(2i)"],params[:item]["time(3i)"],params[:item]["time(4i)"],params[:item]["time(5i)"],0, "-05:00")
      #params[:item]["finished_event"] == "true" ? @item.finished_event = true : @item.finished_event = false
      @item.finished_event ||= false
      redirect_to @item
    else
      render 'new'
    end
  end
  private

  def article_params
    params.require(:item).permit(:event, :description, :time, :finished_event)
  end
end
