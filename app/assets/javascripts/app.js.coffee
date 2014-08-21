@App = new Marionette.Application()

App.addRegions
  headerRegion : "#header-region"
  mainRegion : "#main-region"
  footerRegion : "#footer-region"

App.navigate = (route, options) ->
  options or (options = {})
  Backbone.history.navigate route, options

App.getCurrentRoute = ->
  Backbone.history.fragment

App.on "start", ->
  console.log "We lifted off"
  if Backbone.history
    Backbone.history.start()
  App.trigger "products:list" if @getCurrentRoute is ""


$ ->
  App.start()
