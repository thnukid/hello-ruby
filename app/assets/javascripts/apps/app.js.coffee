@Webshop = do (Backbone, Marionette) ->

  App = new Marionette.Application

  #Adding regions
  App.addRegions
    headerRegion : "#header-region"
    productsRegion : "#products-region"
    footerRegion : "#footer-region"

  App.on "start", ->
    console.log "We lifted off"

  App.start()

  App
