class UsersController < ApplicationController
  def show
  	
  	if current_user
  		@user = User.find(params[:id])
  		@items = @user.items
  	else
  		redirect_to root_path
  	end
	end

private

end
