class UsersController < ApplicationController
  def show
  	@user = current_user  
  	@items = @user.items
	end

private

	def item_params
		params.require(:item).permit(:name)
	end
end
