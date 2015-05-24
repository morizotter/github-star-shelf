gsNavigationBar = ($state, $http, $window)->
  scope:
    state: '='
  restrict: 'E'
  replace: true
  templateUrl: "app/common/directives/gsNavigationBarTemplate.html"
  link: (scope, element, attrs, ctrl) ->
    scope.isActive = (name) ->
      scope.state.current.name is name

    scope.logout = () ->
      $http.get('/users/sign_out').success (res)->
        $window.location.reload();

angular.module('gsApp')
.directive 'gsNavigationBar', ['$state', '$http', '$window', gsNavigationBar]
