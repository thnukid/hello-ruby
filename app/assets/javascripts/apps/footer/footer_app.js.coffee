App.module "FooterApp", (Footer, App, Backbone, Marionette, $, _) ->

  API =
    showFooter: ->
      Footer.Show.Controller.showFooter()

  Footer.on "start", ->
    API.showFooter()
