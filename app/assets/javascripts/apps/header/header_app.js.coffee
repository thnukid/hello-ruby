App.module "HeaderApp", (Header, App, Backbone, Marionette, $, _) ->

  API =
    listHeader: ->
      Header.List.Controller.listHeader()

  Header.on "start", ->
    API.listHeader()
