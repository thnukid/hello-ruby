@App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Header extends Backbone.Model


  class Entities.HeaderCollection extends Backbone.Collection
    model: Entities.Header

  API =
    getHeaders: ->
      new Entities.HeaderCollection [
        {name: "Home", href: "/home"}
        {name: "Questions", href: "/questions"}
        {name: "News", href: "/news"}
        {name: "Contact", href: "/contact"}
      ]


  App.reqres.setHandler "header:entities", ->
    API.getHeaders()
