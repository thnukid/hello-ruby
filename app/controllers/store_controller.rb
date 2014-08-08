class StoreController < ApplicationController
 skip_before_filter :authorize
 
 
  def index
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      @products = Product.where(locale: I18n.locale).order(:title)
      @cart = current_cart
    end

    #playtime
    @current_time = Time.now.strftime("%B %e, %Y at %I:%M %p")
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
