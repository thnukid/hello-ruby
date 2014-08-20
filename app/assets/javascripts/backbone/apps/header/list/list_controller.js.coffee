@Webshop.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->
  List.Controller =
    listHeader: ->
      @links = App.reqres.request "header:entities"
      @headerView = @getHeaderView @links
      App.headerRegion.show @headerView

    getHeaderView: (links) ->
      new List.Headers
        collection: @links
