class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
      flash[:success] = "Logged in!"
  		redirect_to products_url
  	else
  		flash.now[:warning] = "Invalid email or password"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to products_url, :flash => {success: "Logged out!"}
  end
end
