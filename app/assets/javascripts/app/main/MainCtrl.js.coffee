class MainCtrl
  constructor: ($http, $window, $state)->
    that = @

    @state = $state
    @samples = []
    @get = () ->
      $http.get('/api/list')
      .success (data, status, headers, config) ->
        that.samples = data
    @get()

angular.module 'gsApp'
.controller 'MainCtrl', ['$http', '$window', '$state', MainCtrl]
