class ImagesController < ApplicationController
  def index
  end

  def new
    flash.keep
    @image = Image.new
  end

  def create
    image = Image.create image_params
    image.update :listing_id => flash[:id]
    redirect_to listing_path(flash[:id])
  end

  def destroy
    image = Image.find params[:id]
    image.destroy
    redirect_to listing_path(flash[:id])
  end

  def edit
  end

  def show
  end

  private
  def image_params
    params.require(:image).permit(:image, :listing_id)
  end
end
