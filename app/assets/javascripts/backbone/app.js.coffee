@Webshop = do (Backbone,Marionette) ->

  App = new Marionette.Application

  App.addRegions
    headerRegion: "#header-region"
    productsRegion: "#products-region"
    footerRegion: "#footer-region"

  App.addInitializer ->
    App.module("HeaderApp").start()
    App.module("FooterApp").start()

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App
