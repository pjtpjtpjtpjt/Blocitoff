class ItemsController < ApplicationController



def create
  
  @user = current_user
  
  @item = @user.items.create(item_params)
  
  render partial: 'items/item', locals: {current_user: @user, item: @item }
     
end
  
  private
  
def item_params
  params.require(:item).permit!
end
  
  
end
