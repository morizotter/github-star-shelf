class SettingsCtrl
  constructor: ($state)->
    @state = $state

angular.module 'gsApp'
.controller 'SettingsCtrl', ['$state', SettingsCtrl]
