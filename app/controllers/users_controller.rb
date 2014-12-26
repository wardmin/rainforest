class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to products_url, notice: "Signed up!"
  	else
  		render "new"
  	end
  end

  def show
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end

  def set_user
      @user = User.find(params[:id])
  end
end
