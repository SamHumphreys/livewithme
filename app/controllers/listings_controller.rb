class ListingsController < ApplicationController
  def index
    def get_suburbs
      suburbs = ['All']
      @listings.each do |listing|
        if listing.available?
          suburbs.push(listing.suburb)
        end
      end
      suburbs.uniq!
      return suburbs
    end

    @listings = Listing.all.order(:suburb)
    @suburbs = get_suburbs
  end

  def new
    @listing = Listing.new
  end

  def edit
    @listing = Listing.find params[:id]
  end

  def show
    @listing = Listing.find params[:id]
    flash[:id] = @listing.id
  end

  def create
    listing = Listing.create listing_params
    listing.update :user_id => @current_user[:id]
    redirect_to listing
  end

  def update
    listing = Listing.find params[:id]
    listing.update listing_params
    redirect_to listing
  end

  def destroy
    listing = Listing.find params[:id]
    listing.destroy
    redirect_to root_path
  end

  private
  def listing_params
    params.require(:listing).permit(:available, :address, :suburb, :user_id, :details)
  end

end
