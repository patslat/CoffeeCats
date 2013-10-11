window.CoffeeCats =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: (cats) ->
    console.log cats
    new CoffeeCats.Routers.Cats

$(document).ready ->
  $content = $("#content")
  #get bootstrapped data
  CoffeeCats.initialize({
    content: $content,
    collection: cats
  })
