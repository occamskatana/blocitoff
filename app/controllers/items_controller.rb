class ItemsController < ApplicationController

  def create
  	@user = User.find(params[:user_id])
  	@item = @user.item.new(item_params)
  	@new_item = Item.new


  	if @item.save
  		flash[:notice] = "Your item was saved successfully"
  	else
  		flash[:error] = "Your item was not saved successfully"
  	end
  end

private
	def item_params
		params.require(:item).permit(:name)
	end

end
