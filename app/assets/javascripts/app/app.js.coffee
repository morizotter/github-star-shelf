app = angular.module 'gssApp', [
  'ui.router'
  'templates'
]
app.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'
  $stateProvider
  .state 'main',
    url: "/"
    templateUrl: "app/main/mainTemplate.html"
    controller: 'MainCtrl'
    controllerAs: 'main'
]
