App.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
  alertPrivate = (message) ->
    alert "Private alert:" + message

  Entities.alertPublic = (message) ->
    alert "I call an private func"
    alertPrivate message
