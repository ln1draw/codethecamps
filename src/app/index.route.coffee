angular.module 'codeTheCamps'
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

  .factory 'Locales', (railsResourceFactory) ->
    return railsResourceFactory({
      url: '/api/locales',
      name: 'locales'
    })

  