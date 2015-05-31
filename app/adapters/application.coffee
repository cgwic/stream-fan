`import DS from 'ember-data'`

applicationAdapter = DS.RESTAdapter.extend
  host: 'https://api.twitch.tv',
  namespace: 'kraken'

  pathForType: (modelName) ->
    console.log @
    path = _super.pathForType(modelName)
    console.log path
    path


`export default applicationAdapter`
