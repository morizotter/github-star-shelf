main = ()->
  restrict: 'E'
  replace: true
  templateUrl: "app/main/mainTemplate.html"
  link: (scope, element, attrs, ctrl) ->

angular.module('gssApp')
.directive 'main', [main]
