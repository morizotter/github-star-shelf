gsList = ()->
  scope:
    samples: '='
  restrict: 'E'
  replace: true
  templateUrl: "app/main/gsListTemplate.html"
  link: (scope, element, attrs, ctrl) ->
    console.log "samples: #{scope.samples}"

angular.module('gsApp')
.directive 'gsList', [gsList]
