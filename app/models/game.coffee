`import DS from 'ember-data'`

model = DS.Model.extend
  _id: DS.attr('number')
  name: DS.attr('string')
  giantbomb_id: DS.attr('number')
  viewersCount: DS.attr('number')
  streamsCount: DS.attr('number')
  box_large: DS.attr('string')
  box_medium: DS.attr('string')
  box_small: DS.attr('string')
  logo_large: DS.attr('string')
  logo_medium: DS.attr('string')
  logo_small: DS.attr('string')

`export default model`
