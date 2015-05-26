'use strict'

###*
 # @ngdoc overview
 # @name testProjectApp
 # @description
 # # testProjectApp
 #
 # Main module of the application.
###
angular
  .module 'testProjectApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ui.calendar',
    'ngCookies'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/calendar',
        templateUrl: 'views/calendar.html'
        controller: 'CalendarCtrl'

      .when '/debug',
        templateUrl: 'views/debug.html'
        controller: 'DebugCtrl'
      .otherwise
        redirectTo: '/'
  .run ($http, $cookies)->
      $http.defaults.headers.common['Authorization'] = " OAuth " + $cookies.sid

