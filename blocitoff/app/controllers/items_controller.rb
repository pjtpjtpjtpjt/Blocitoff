class ItemsController < ApplicationController



def create
  @item = current_user.items.create(item_params)
  redirect_to :back
end

def destroy
  @item = current_user.items.find(params[:id])
  
  @item.destroy
  

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
