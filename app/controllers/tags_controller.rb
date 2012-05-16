class TagsController < ApplicationController
  respond_to :json
  def index
    @tags = Tag.order(:name)
    respond_with do |format|
      format.json { render json: @tags.tokens(params[:q]) }
    end
  end

  def new
    respond_with @tag = Tag.new
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      respond_with @tag
    else
      render :new
    end
  end
end
