app = angular.module 'gsApp', [
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
  .state 'sub',
    url: "/sub"
    templateUrl: "app/sub/subTemplate.html"
    controller: 'SubCtrl'
    controllerAs: 'sub'
  .state 'settings',
    url: "/settings"
    templateUrl: "app/settings/setteingsTemplate.html"
    controller: 'SettingsCtrl'
    controllerAs: 'settings'
]
