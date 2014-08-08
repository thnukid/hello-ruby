class ApplicationController < ActionController::Base
  before_filter :set_i18n_locale_from_params
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
        if request.format == Mime::HTML
           redirect_to login_url, notice: "Please log in"
        elsif
          if user = authenticate_with_http_basic do |u,p|
            find_user = User.find_by_name(u)
            find_user.authenticate(p) if find_user
          end
          session[:user_id] = user.id
          elsif
            render :status => 403, :text => "login failed" and return
          end
        end
      end

    if User.count == 0
     flash[:notice] = "Please create an Administrator account to secure your depot shop!"
    end
  end


  protected
  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end

  def default_url_options
    { locale: I18n.locale}
  end

end

