App.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->
  Show.Controller =
    showFooter: ->
      footerView = new Show.Footer
      App.footerRegion.show footerView

