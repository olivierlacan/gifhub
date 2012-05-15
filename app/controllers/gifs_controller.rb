class GifsController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @gifs = Gif.all
  end

  def show
    respond_with @gif = Gif.find(params[:id])
  end

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(params[:gif])
    if @gif.save
      flash[:notice] = "Wee!"
      redirect_to gifs_url
    else
      flash[:error] = "Um, lame."
      redirect_to gifs_url
    end
  end

  def edit
    @gif = Gif.find(params[:id])
  end

  def update
    @gif = Gif.find(params[:id])
    if @gif.update_attributes(params[:gif])
      flash[:notice] = "Wee!"
      redirect_to gifs_url
    else
      flash[:error] = "Nope. Noooope!"
      render :edit
    end
  end

  def destroy
    @gif = Gif.find(params[:id])
    @gif.destroy
    flash[:notice] = "Blasted that thing away."
    redirect_to gifs_url
  end
end
