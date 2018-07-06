require 'pry'
class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user 
			session[:user_id] = @user.id
    	redirect_to user_path(@user)
    else
    	# add flash message to complete form
    	redirect_to(controller: 'users', action: 'new')
    end
	end

	def show
		@user = User.find_by(id: params[:id])
		if @user == current_user
			@message = "At Home - no restaurants yet."
		else
			#add flash message to log in
			redirect_to root_path
		end
	end


	private 

	def user_params
		params.require(:user).permit(:name, :email, :password, :admin)
	end

end
