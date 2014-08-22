App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.LineItem extends Backbone.RelationalModel
    urlRoot: "line_items"
    relations: [
      type: "HasOne"
      key: "product"
      relatedModel: App.Entities.Product
      ]

  class Entities.LineItemCollection extends Backbone.Collection
    model: Entities.LineItem

  class Entities.Cart extends Backbone.RelationalModel
    url: "api/cart"
    relations: [
      type: "HasMany"
      key: "line_items"
      relatedModel: Entities.LineItem
      collectionType: Entities.LineItemCollection
      ]
    addProduct: (product) ->
      new LineItem(product_id: product.id)

  API =
    getCartEntities: ->
      cart = new Entities.Cart()
      cart.fetch()
      cart

  App.reqres.setHandler "cart:entities", ->
    API.getCartEntities()




