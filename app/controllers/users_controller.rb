class UsersController < ApplicationController
  def show
	  	if current_user
	  	@user = current_user
	  	@items = current_user.items
	  	else
	  	redirect_to welcome_index_path
	  	end
  end

private

	def item_params
		params.require(:item).permit(:name)
	end
end
