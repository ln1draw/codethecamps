angular.module 'fakeLaunchHub'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'locales',
        url: '/locales'
        templateUrl: 'app/views/locales.html'
        controller: 'LocalesController'

    $urlRouterProvider.otherwise '/'
