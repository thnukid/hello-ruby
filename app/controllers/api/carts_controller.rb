class Api::CartsController < ApplicationController
  def show
    render :json => current_cart.to_json(:include => {
      :line_items => { :include => :product }})
  end
end
