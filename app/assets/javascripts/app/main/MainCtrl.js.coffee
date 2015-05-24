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

    @logout = () ->
      $http.get('/users/sign_out').success (res)->
        $window.location.reload();

angular.module 'gssApp'
.controller 'MainCtrl', ['$http', '$window', '$state', MainCtrl]
