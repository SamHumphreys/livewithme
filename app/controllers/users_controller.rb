class UsersController < ApplicationController
  before_action :authorise, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to user_path
  end

  def show
    @user = User.find params[:id]
    @listings = Listing.all
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :image, :first_name, :surname, :phone, :social_media)
  end

  def authorise
    redirect_to root_path unless (@current_user.present? && @current_user.is_admin?)
  end

end
