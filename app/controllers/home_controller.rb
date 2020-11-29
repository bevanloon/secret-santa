class HomeController < ApplicationController
  def index
  end

  def wishlist
  end

  def save_wishlist
    permitted = params.permit(:wishlist)
    wishlist = permitted[:wishlist].presence
    if wishlist
      current_user.update(wishlist: wishlist)
      flash[:notice] = "Wishlist saved"
      redirect_to root_url
    else
      if current_user.wishlist.presence
        flash[:old_wishlist] = current_user.wishlist
      end
      current_user.update(wishlist: "")
      flash[:alert] = "You've chosen to leave your wishlist blank.<br>If you save something in your wishlist, it will help your secret santa find something you'll appreciate."
      render "wishlist"
    end
  end
end
