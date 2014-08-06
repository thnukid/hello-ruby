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
end
