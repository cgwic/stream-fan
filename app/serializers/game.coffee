`import DS from 'ember-data'`

extractGame = (gameDescr) ->
  viewersCount: gameDescr.viewers
  streamsCount: gameDescr.channels
  _id: gameDescr.game._id
  id: gameDescr.game.name
  name: gameDescr.game.name
  giantbomb_id: gameDescr.game.giantbomb_id
  box_large: gameDescr.game.box.large
  box_medium: gameDescr.game.box.medium
  box_small: gameDescr.game.box.small
  logo_large: gameDescr.game.logo.large
  logo_medium: gameDescr.game.logo.medium
  logo_small: gameDescr.game.logo.small

serializer = DS.RESTSerializer.extend
  #primaryKey: 'name'
  extractArray: (store, type, payload) ->
    gamesArray = []
    gamesArray.push(extractGame gameDescr) for gameDescr in payload.top
    store.push 'numValue',
      id: 'GamesTotalCount'
      value: payload._total
    @_super store, type,
      games: gamesArray

`export default serializer`
