angular.module 'codeTheCamps'
  .controller 'MainController', ($scope, Locales) ->
    'ngInject'

    $scope.loading = true
    Locales.query().then (locales) ->
      $scope.locales = locales
      $scope.loading = false





