`import DS from 'ember-data'`

model = DS.Model.extend
  _id: DS.attr('number')
  name: DS.attr('string')
  game: DS.attr('string')
  created_at: DS.attr('date')
  viewersCount: DS.attr('number')
  broadcaster_language: DS.attr('string')
  preview_large: DS.attr('string')
  preview_medium: DS.attr('string')
  preview_small: DS.attr('string')
  display_name: DS.attr('string')
  logo: DS.attr('string')
  mature: DS.attr('boolean')
  status: DS.attr('string')
  url: DS.attr('string')

`export default model`
