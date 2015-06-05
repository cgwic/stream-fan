`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'games'
  @route 'streams',
    path: 'streams/:game',
    ->
  @route 'streams.all-games', path: 'streams/all-games'

`export default Router`
