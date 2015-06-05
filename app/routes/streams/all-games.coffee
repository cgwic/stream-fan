`import Ember from 'ember'`

allStreamsRoute = Ember.Route.extend
  controllerName: 'streams'
  model: () ->
    @store.unloadAll('stream')
    @store.find 'stream'
  renderTemplate: () ->
    @controller.set 'hideGameTitle', false
    @render 'streams'

`export default allStreamsRoute`
