class MainCtrl
  constructor: ($http)->
    that = @

    @samples = [
      { name: 'sample1' }
      { name: 'sample2' }
      { name: 'sample3' }
    ]

    @get = () ->
      $http.get('/api/list')
      .success (data, status, headers, config) ->
        that.samples = data
    @get()

angular.module 'gssApp'
.controller 'MainCtrl', ['$http', MainCtrl]
