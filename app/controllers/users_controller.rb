class UsersController < ApplicationController
  def show
  	@item = @user.item.new(item_params)
  	
	  	if current_user
	  	@user = User.find(current_user)
	  	else
	  	redirect_to welcome_index_path
	  	end
  end

private

	def item_params
		params.require(:item).permit(:name)
	end
end
