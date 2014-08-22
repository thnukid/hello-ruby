App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Product extends Backbone.RelationalModel
    urlRoot: "products"

  class Entities.Products extends Backbone.Collection
    model: Entities.Product
    url: "products"

  API =
    getProductEntities: ->
      products = new Entities.Products()
      products.fetch()
      products

  App.reqres.setHandler "product:entities", ->
    API.getProductEntities()
