`import DS from 'ember-data'`

extractStream = (streamDescr) ->
  id: streamDescr.channel.name
  _id: streamDescr._id
  name: streamDescr.channel.name
  game: streamDescr.game
  created_at: streamDescr.created_at
  viewersCount: streamDescr.viewers
  language: streamDescr.channel.language
  preview_large: streamDescr.preview.large
  preview_medium: streamDescr.preview.medium
  preview_small: streamDescr.preview.small
  display_name: streamDescr.channel.display_name
  logo: streamDescr.channel.logo
  mature: streamDescr.channel.mature
  status: streamDescr.channel.status
  url: streamDescr.channel.url

serializer = DS.RESTSerializer.extend
  #primaryKey: 'name'
  extractArray: (store, type, payload) ->
    streamsArray = []
    streamsArray.push(extractStream streamDescr) for streamDescr in payload.streams
    store.push 'numValue',
      id: 'StreamsTotalCount'
      value: payload._total
    @_super store, type, streams: streamsArray

`export default serializer`
