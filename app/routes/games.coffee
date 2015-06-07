`import Ember from 'ember'`
`import OffsetInfinityRoute from 'ember-infinity/mixins/offset-infinity-route'`

route = Ember.Route.extend OffsetInfinityRoute,
  totalCount: Ember.computed( ->
    @store.getById 'numValue', 'GamesTotalCount'
      .get 'value'
    ).volatile()
  model: ->
    @infinityModel 'game',
      limit: 12
      initialOffset: 0

  actions:
    willTransition: (transition) ->
      # dirty hack, todo: will be removed
      @set '_currentOffset', 0

`export default route`
