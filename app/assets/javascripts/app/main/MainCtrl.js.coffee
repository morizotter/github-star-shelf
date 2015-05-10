class MainCtrl
  constructor: ()->
    @samples = [
      { name: 'sample1' }
      { name: 'sample2' }
      { name: 'sample3' }
    ]

angular.module 'gssApp'
.controller 'MainCtrl', [MainCtrl]
