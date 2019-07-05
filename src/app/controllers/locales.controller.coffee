angular.module 'fakeLaunchHub'
  .controller 'LocalesController', ($scope, Locales) ->
    $scope.loading = true
    Locales.query().then (locales) ->
      $scope.locales = locales
      $scope.loading = false