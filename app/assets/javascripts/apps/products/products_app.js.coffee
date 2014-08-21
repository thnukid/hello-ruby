App.module "ProductApp", (Product, App, Backbone, Marionette, $, _) ->

  API =
    listProducts: ->
      Product.List.Controller.listProducts()

  Product.on "start", ->
   API.listProducts()

