class MainCtrl
  constructor: ($http, $window)->
    that = @

    @samples = []

    @get = () ->
      $http.get('/api/list')
      .success (data, status, headers, config) ->
        that.samples = data
    @get()

    @logout = () ->
      $http.get('/users/sign_out').success (res)->
        $window.location.reload();

angular.module 'gssApp'
.controller 'MainCtrl', ['$http', '$window', MainCtrl]
