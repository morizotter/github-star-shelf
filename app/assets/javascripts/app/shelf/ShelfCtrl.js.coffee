class ShelfCtrl
  constructor: ($http, $window, $state, GITHUB)->
    that = @

    @state = $state
    @samples = []
    @get = () ->
      $http.get('/api/list')
      .success (data, status, headers, config) ->
        that.samples = data
      $http.get('/api/users/me')
      .success (data, status, headers, config) ->
        console.log data
    @get()

angular.module 'gsApp'
.controller 'ShelfCtrl', ['$http', '$window', '$state', 'GITHUB', ShelfCtrl]
