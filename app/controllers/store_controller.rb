class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @current_time = Time.now.strftime("%B %e, %Y at %I:%M %p")
  end
end
