class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  private

    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

  protected

  def authorize
      unless User.find_by_id(session[:user_id]) or User.count == 0
         redirect_to login_url, notice: "Please log in"
     end

    if User.count == 0
     flash[:notice] = "Please create an Administrator account to secure your depot shop!"
    end
  end

end
