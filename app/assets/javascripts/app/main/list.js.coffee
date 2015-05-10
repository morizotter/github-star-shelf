list = ()->
  scope:
    samples: '='
  restrict: 'E'
  replace: true
  templateUrl: "app/main/listTemplate.html"
  link: (scope, element, attrs, ctrl) ->
    console.log "samples: #{scope.samples}"

angular.module('gssApp')
.directive 'list', [list]
