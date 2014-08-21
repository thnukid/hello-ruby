App.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller =
    listHeader: ->
      links = App.request("header:entities")
      headers = new List.Headers(collection: links)
      App.headerRegion.show headers
