class ItemsController < ApplicationController

  def create
  	@user = User.find(params[:user_id])
  	@items = @user.items.new(item_params)
  	@new_item = Item.new


  	if @items.save
  		flash[:notice] = "Your item was saved successfully"
  	else
  		flash[:error] = "Your item was not saved successfully"
  	end

    redirect_to user_path(@user.id)

  end

private
	def item_params
		params.require(:item).permit(:name)
	end

end
