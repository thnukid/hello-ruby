App.module "ProductApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller =
    listProducts: ->
      #debugger
      fetchProductItems = App.request("product:entities")
      $.when(fetchProductItems).done (fetchProductItems)
      products = new List.Products(collection: fetchProductItems)
      App.mainRegion.show products
