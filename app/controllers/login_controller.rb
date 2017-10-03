class LoginController < ApplicationController
  def index
  end
  def about
  end
  def create
  	user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password_digest])
			session[:user_id] = user.id
			redirect_to "/user/#{user.id}"
		else
			flash[:errors] = ["Invalid Combination"]
			redirect_to "/"
		end
  end
  def destroy
  	if session[:user_id]
  		session[:user_id] = nil
  	end
  	redirect_to "/"
  end
  def check
    
  end
end
