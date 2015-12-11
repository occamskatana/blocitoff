class UsersController < ApplicationController
  def show
  	if current_user
  		@user = current_user  
  		@items = @user.items
  	else
  		redirect_to root_path
  	end
	end

private

	def item_params
		params.require(:item).permit(:name)
	end
end
