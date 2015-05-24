gsNavigationBar = ($state)->
  scope:
    state: '='
  restrict: 'E'
  replace: true
  templateUrl: "app/common/directives/gsNavigationBarTemplate.html"
  link: (scope, element, attrs, ctrl) ->
    scope.isActive = (name) ->
      scope.state.current.name is name

angular.module('gsApp')
.directive 'gsNavigationBar', ['$state', gsNavigationBar]
