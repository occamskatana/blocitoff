class UsersController < ApplicationController
  def show
	  	if current_user
	  	@user = User.find(current_user)
	  	else
	  	redirect_to welcome_index_path
	  	end
  end


end
