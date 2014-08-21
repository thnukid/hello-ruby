@App = new Marionette.Application()

App.addRegions
  headerRegion : "#header-region"
  mainRegion : "#main-region"
  footerRegion : "#footer-region"

App.on "start", ->
  console.log "We lifted off"
  if Backbone.history
    Backbone.history.start()

$ ->
  App.start()
