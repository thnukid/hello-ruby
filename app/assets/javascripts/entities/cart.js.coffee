App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.LineItem extends Backbone.Model
    urlRoot: "line_items"

  class Entities.Cart extends Backbone.Collection
    model: Entities.LineItem
    url: "line_items"

  API =
    getCartEntities: ->
      cart = new Entities.Cart()
      cart.fetch()
      cart

  App.reqres.setHandler "cart:entities", ->
    API.getCartEntities()
