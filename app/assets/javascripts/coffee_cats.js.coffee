window.CoffeeCats =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ($content, cats) ->
    new CoffeeCats.Routers.Cats({ content: $content, collection: cats })
    Backbone.history.start()

$(document).ready ->
  #get bootstrapped data
  $content = $("#content")
  CoffeeCats.initialize($content, cats)
