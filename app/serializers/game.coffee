`import DS from 'ember-data'`

extractGame = (json) ->

serializer = DS.RESTSerializer.extend
  primaryKey: name


`export default serializer`
