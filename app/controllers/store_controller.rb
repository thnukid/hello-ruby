class StoreController < ApplicationController
 skip_before_filter :authorize
 
 
  def index
    @products = Product.order(:title)
    @cart = current_cart
   #playtime
    @current_time = Time.now.strftime("%B %e, %Y at %I:%M %p")
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
