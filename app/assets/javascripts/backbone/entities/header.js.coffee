@Webshop.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
  
  class Entities.Header extends Backbone.Model

  class Entities.HeaderCollection extends Backbone.Collection
    model: Entities.Header
    
  API =
    getHeaders: -> 
      models =  [
          new Entities.Header({name: "Home"}),
          new Entities.Header({name: "Home"}),
          new Entities.Header({name: "Home"})
        ]

      header = new Entities.HeaderCollection()
      header.add models
      header

  App.reqres.setHandler "header:entities", ->
    API.getHeaders()

