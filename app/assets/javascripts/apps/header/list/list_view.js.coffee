App.module "HeaderApp.List", (List, App,Backbone, Marionette, $, _) ->

  class List.Header extends Marionette.ItemView
    template: "header/templates/header"
    tagName: "li"

  class List.Headers extends Marionette.CompositeView
    template: "header/templates/headers"
    className: "navbar navbar-default"
    childView: List.Header
    childViewContainer: "ul"
    events:
      "click a": "linkClicked"

    linkClicked: (e) ->
      e.preventDefault()
      alert "aiiight,u clicked on me, pirate"
