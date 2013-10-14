class CoffeeCats.Views.CatShow extends Backbone.View

  tagName: 'li'

  template: JST['cats/show']

  render: () ->
    @$el.html @template({ model: @model })
    this
