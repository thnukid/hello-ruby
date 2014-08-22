App.module "ProductApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Product extends Marionette.ItemView
    template: "products/templates/product_list"
    className: "entry"

  class List.Products extends Marionette.CompositeView
    template: "products/templates/products_list"
    childView: List.Product
    childViewContainer: "div"
    events:
      "click .btn" : "addProductClicked"

    addProductClicked: (e) ->
      e.preventDefault()
      alert("We so gonna add a product!")
