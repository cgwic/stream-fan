`import Ember from 'ember'`
`import OffsetInfinityRoute from 'ember-infinity/mixins/offset-infinity-route'`

route = Ember.Route.extend OffsetInfinityRoute,
  controllerName: 'streams'
  totalCount: Ember.computed( ->
    @store.getById 'numValue', 'StreamsTotalCount'
      .get 'value'
    ).volatile()

  model: () ->
    @store.unloadAll('stream')
    @infinityModel 'stream',
      limit: 12
      initialOffset: 0
  renderTemplate: () ->
    @controller.set 'hideGameTitle', false
    @render 'streams'

  actions:
    willTransition: (transition) ->
      # dirty hack, todo: need to be removed
      @set '_currentOffset', 0

`export default route`
