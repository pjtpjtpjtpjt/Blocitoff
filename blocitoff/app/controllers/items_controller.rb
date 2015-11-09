class ItemsController < ApplicationController



def create
  
  @user = current_user
  
  @item = @user.items.create(item_params)
  

  redirect_to :back
     
end
  
  private
  
def item_params
  params.require(:item).permit!
end
  
  
  
end
