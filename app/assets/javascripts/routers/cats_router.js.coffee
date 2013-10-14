class CoffeeCats.Routers.Cats extends Backbone.Router

  currentViews: {}
  elements: {}

  viewConstructors:
    index: CoffeeCats.Views.CatsIndex

  routes:
    '': 'index'

  initialize: (opts) ->
    { @elements, @cats } = opts


  index: ->
    @_renderView('index', collection: @cats)
    view = new @viewConstructors['index']({
      content: @content,
      collection: @cats
    })
    @content.html(view.render().$el)


  _renderView: (type, options) ->
    newView = new @viewConstructors[type](options)
    @elements[type].html newView.render().$el
