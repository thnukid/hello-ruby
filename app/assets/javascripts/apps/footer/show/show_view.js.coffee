App.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Footer extends Marionette.ItemView
    template: "footer/templates/show_footer"
    className: "footer"
