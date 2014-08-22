App.module "ProductApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller =
    listProducts: ->
      #debugger
      fetchProductItems = App.request("product:entities")
      $.when(fetchProductItems).done (fetchProductItems)
      products = new List.Products(collection: fetchProductItems)

      #triggers
      products.on "childview:product:addToCart", (childView, model) ->
        console.log "This model, dude", model

      #add to region
      App.mainRegion.show products
