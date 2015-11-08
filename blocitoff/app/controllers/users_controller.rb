class UsersController < ApplicationController

def show
  if user_signed_in?
  @user = params[:current_user]
  
    #   if @items.nil?
    #     else
    #     @item = @user.item
    #   end
    else
  end
end



end
