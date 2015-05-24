class SubCtrl
  constructor: ($state)->
    @state = $state

angular.module 'gsApp'
.controller 'SubCtrl', ['$state', SubCtrl]
