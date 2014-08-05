class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("%B %e, %Y at %I:%M %p")
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
