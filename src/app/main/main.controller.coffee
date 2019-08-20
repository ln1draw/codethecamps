angular.module 'codeTheCamps'
  .controller 'MainController', ($scope, Locales) ->
    'ngInject'

    $scope.loading = true
    Locales.query().then (locales) ->
      $scope.locales = locales
      $scope.loading = false
      $scope.markerBuilder(locales)

    $scope.markerBuilder = (locales) ->
      coord_array = []
      locale for locale in locales.each
        coord_array << {long: locale.longitude, lat: locale.latitude}
      console.log(coord_array)
