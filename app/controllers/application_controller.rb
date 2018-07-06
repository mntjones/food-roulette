class ApplicationController < ActionController::Base

	def home

	end
	
	private

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    redirect_to '/' unless current_user
  end
  
end
