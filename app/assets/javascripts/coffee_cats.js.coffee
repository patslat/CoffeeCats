window.CoffeeCats =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ($content, cats) ->
    new CoffeeCats.Routers.Cats({
      elements: { index: $content, show: $content },
      cats: cats
    })
    Backbone.history.start()

$(document).ready ->
  #get bootstrapped data
  $content = $("#content")
  CoffeeCats.initialize($content, cats)
