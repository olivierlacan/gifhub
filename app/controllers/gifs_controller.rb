class GifsController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @gifs = Gif.recent.paginate(:page => params[:page], :per_page => 20)
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
      flash[:error] = "Um, forgetting something?"
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

  def search
    if params[:search]
      redirect_to search_url("#{params[:search][:query]}") 
    else
      @gif = Gif.joins(:tags).where('tags.name ILIKE ?', "%#{params[:query]}%").first
      if @gif.present?
        respond_with @gif
      else
        flash[:error] = "Ermahgerd Nufern!"
        respond_with @gif do |format|
          format.json { render json: "Ermahgerd Nufern!", status: :unprocessable_entity }
          format.html { redirect_to search_url }
        end       
      end
    end
  end
end
