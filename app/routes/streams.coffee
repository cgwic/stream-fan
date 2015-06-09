`import Ember from 'ember'`
`import OffsetInfinityRoute from 'ember-infinity/mixins/offset-infinity-route'`

streamsRoute = Ember.Route.extend OffsetInfinityRoute,
  totalCount: Ember.computed( ->
    @store.getById 'numValue', 'StreamsTotalCount'
      .get 'value'
    ).volatile()
  model: (params) ->
    @infinityModel 'stream',
      Ember.merge
        limit: 12
        initialOffset: 0
        params
  renderTemplate: () ->
    @controller.set 'hideGameTitle', true
    @render 'streams'

  actions:
    willTransition: (transition) ->
      # dirty hack, todo: need to be removed
      @set '_currentOffset', 0

`export default streamsRoute`
