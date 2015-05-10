class MainCtrl
  constructor: ($http)->
    that = @

    @samples = []

    @get = () ->
      $http.get('/api/list')
      .success (data, status, headers, config) ->
        that.samples = data
    @get()

angular.module 'gssApp'
.controller 'MainCtrl', ['$http', MainCtrl]
