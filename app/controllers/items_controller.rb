class ItemsController < ApplicationController

  def create
  	@user = current_user
  	@item = @user.items.new(item_params)
    @items = @user.items
  	


  	if @item.save
  		flash[:notice] = "Your item was saved successfully"
  	else
  		flash[:error] = "Your item was not saved successfully"
  	end

    redirect_to :back
    end



  def destroy
    
    @item = Item.find(params[:id])

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
