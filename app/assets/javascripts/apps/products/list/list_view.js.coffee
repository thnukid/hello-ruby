App.module "ProductApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Product extends Marionette.ItemView
    template: "products/templates/product_list"
    className: "entry"
    events:
      "click .js-addToCart" : "addToCart"
    addToCart: (e) ->
      e.preventDefault()
      e.stopPropagation()
      @trigger "product:addToCart", @model
      App.vent.trigger "cart:badgeCount", @model
      App.vent.trigger "product:addToCart", @model


  class List.Products extends Marionette.CompositeView
    template: "products/templates/products_list"
    childView: List.Product
    childViewContainer: "div"
