module ApplicationHelper

  def hidden_div_if(condition, attributes = {},&block)
    if condition
        attributes["style"] = "display:none"
    end
    content_tag("div",attributes,&block)
  end

  #playtime
  def store_visited
   session[:counter]
   end

  #playtime - exchange rate eur - us
  def
    currency_to_locale(price)
    price = price * 1.34 if 'es' == I18n.locale.to_s
    number_to_currency price
  end
end
