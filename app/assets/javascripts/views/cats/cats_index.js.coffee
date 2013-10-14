class CoffeeCats.Views.CatsIndex extends Backbone.View

  tagName: 'ul'

  template: JST['cats/index']

  render: ->
    @$el.html @template
    $container = @$el.find("#cats-index")
    @collection.each (cat) =>
      renderedCat = new CoffeeCats.Views.CatShow(model: cat)
      $container.append(renderedCat.render().$el)
    this

