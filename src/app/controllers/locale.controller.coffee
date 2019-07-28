angular.module 'codeTheCamps'
  .controller 'LocaleController', ($scope, $stateParams, Locales) ->
    $scope.id = $stateParams.id
    $scope.loading = true
    Locales.get($scope.id).then (locale) ->
      $scope.locale = locale
      $scope.loading = false
      console.log(locale)