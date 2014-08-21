App.module "ProductApp", (Product, App, Backbone, Marionette, $, _) ->

  class App.Router extends Marionette.AppRouter
    routesApp:
      "bb-products": "listProducts"

  API =
    listProducts: ->
      Product.List.Controller.listProducts()

  Product.on "products:list", ->
   App.navigate("bb-products")
   API.listProducts()

  Product.addInitializer ->
    new App.Router(controller: API)
