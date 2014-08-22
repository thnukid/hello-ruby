App.module "HeaderApp", (Header, App, Backbone, Marionette, $, _) ->

  API =
    listHeader: ->
      Header.List.Controller.listHeader()

  App.vent.on "cart:badgeCount", (data) ->
    console.log "Shouting accross the ship: ", data
    $badge = $(".js-cartCount")
    @count = parseInt $badge.text()
    console.log @count
    $badge.html @count+1
    
  Header.on "start", ->
    API.listHeader()
