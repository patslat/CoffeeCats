class CoffeeCats.Routers.Cats extends Backbone.Router
  constructor: (opts) ->
    { @content, @collection } = opts

  viewConstructors:
    index: CoffeeCats.Views.CatsIndex

  routes:
    '': 'index'

  index: () ->
    debugger
    view = @viewConstructors['index']({
      content: @content,
      collection: @collection
    })
    @content.html(view.render().$el)
