app = angular.module 'gsApp', [
  'ui.router'
  'templates'
]
app.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'
  $stateProvider
  .state 'shelf',
    url: "/"
    templateUrl: "app/shelf/shelfTemplate.html"
    controller: 'ShelfCtrl'
    controllerAs: 'shelf'
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
