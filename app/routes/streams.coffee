`import Ember from 'ember'`

streamsRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'stream', params
  renderTemplate: () ->
    @controller.set 'hideGameTitle', true
    @render 'streams'

`export default streamsRoute`
