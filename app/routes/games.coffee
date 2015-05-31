`import Ember from 'ember'`

route = Ember.Route.extend
  model: ->
    @store.find('game');

`export default route`
