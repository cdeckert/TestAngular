'use strict'

###*
 # @ngdoc function
 # @name testProjectApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the testProjectApp
###
angular.module 'testProjectApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
