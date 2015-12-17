class ItemsController < ApplicationController

  def create
  	@user = User.find(params[:user_id])
  	@item = @user.items.new(item_params)
    @items = @user.items
  	


  	if @item.save
  		flash[:notice] = "Your item was saved successfully"
  	else
  		flash[:error] = "Your item was not saved successfully"
  	end

    respond_to do |format| 
      format.html {redirect_to user_path}
      format.js
    end
        
  end



  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    @items = @user.items

    if @item.destroy
      flash[:notice] = "Your item was successfully deleted"
    else
      flash[:error] = "Your item could not be deleted for some reason. Please try again"
    end

  respond_to do |format|
      format.html 
      format.js
    end
  end

private
	def item_params
		params.require(:item).permit(:name)
	end

end
