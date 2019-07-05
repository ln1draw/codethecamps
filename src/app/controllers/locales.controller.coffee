angular.module 'fakeLaunchHub'
  .controller 'LocalesController', ($scope, Locales) ->
    $scope.loading = true
    Locales.query().then (locales) ->
      console.log(locales)
      $scope.locales = locales
      $scope.loading = false