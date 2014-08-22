App.module "HeaderApp.List", (List, App,Backbone, Marionette, $, _) ->

  class List.Header extends Marionette.ItemView
    template: "header/templates/header"
    tagName: "li"
    events:
      "click a": "highlights"
    highlights: (e) ->
      e.preventDefault()
      @$el.toggleClass "active"
      console.log "you clicked, pirate:" + $(e.target).text()

  class List.Headers extends Marionette.CompositeView
    template: "header/templates/headers"
    className: "navbar navbar-default"
    childView: List.Header
    childViewContainer: "ul"
