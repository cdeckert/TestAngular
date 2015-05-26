'use strict'

###*
 # @ngdoc function
 # @name testProjectApp.controller:CalendarCtrl
 # @description
 # # CalendarCtrl
 # Controller of the testProjectApp
###
angular.module 'testProjectApp'
  .controller 'CalendarCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    $scope.eventSources = {events:[{
					title: 'Repeating Event',
					start: '2015-05-16T16:00:00'
				}]}
