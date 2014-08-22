App.module "CartApp", (Cart, App, Backbone, Marionette, $, _) ->

  API =
    listCart: ->
      Cart.List.Controller.listCart()

  Cart.on "start", ->
   API.listCart()

