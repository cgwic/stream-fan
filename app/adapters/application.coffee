`import DS from 'ember-data'`

applicationAdapter = DS.RESTAdapter.extend
  host: 'https://api.twitch.tv'
  namespace: 'kraken'
  headers:
    "client_id" : "gpojswtg0itthwvo2q77x0j5bn1mrgb"


  ajaxOptions: (url, type, options) ->
    hash = @_super(url, type, options)
    hash.dataType = "jsonp"
    hash

  buildURL: (type, id) ->
    return @_super(type, id) if type != 'game'
    @_super(type, id) + '/top'

`export default applicationAdapter`
