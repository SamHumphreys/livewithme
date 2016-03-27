class ImagesController < ApplicationController
  def index
  end

  def new
    raise "hell"
    image = Image.new
  end

  def create
    image = Image.create image_params
    image.update :listing_id => @listing
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
