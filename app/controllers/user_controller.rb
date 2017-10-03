class UserController < ApplicationController
  def show
  end
  def create
	user = User.new(user_params)
		if user.save
		session[:user_id] = user.id
		redirect_to "/user/#{user.id}"
		else
    flash[:errors] = "Invalid Combination"
		redirect_to :back
		end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  	def user_params
  		params.require(:user).permit(:fname, :lname, :email, :password,:password_confirmation, :address)
  	end
end
