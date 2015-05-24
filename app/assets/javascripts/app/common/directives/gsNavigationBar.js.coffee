gsNavigationBar = ()->
  scope:
    state: '='
  restrict: 'E'
  replace: true
  templateUrl: "app/common/directives/gsNavigationBarTemplate.html"
  link: (scope, element, attrs, ctrl) ->
    scope.isActive = (name) ->
      scope.state.current.name is name

angular.module('gssApp')
.directive 'gsNavigationBar', [gsNavigationBar]
