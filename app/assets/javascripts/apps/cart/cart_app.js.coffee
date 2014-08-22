App.module "CartApp", (Cart, App, Backbone, Marionette, $, _) ->

  API =
    listCart: ->
      Cart.List.Controller.listCart()

  App.vent.on "product:addToCart", (data) ->
    console.log "Arrr an new cargo", @data

  Cart.on "start", ->
   #API.listCart()

