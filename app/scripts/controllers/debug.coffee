'use strict'

###*
 # @ngdoc function
 # @name testProjectApp.controller:DebugCtrl
 # @description
 # # DebugCtrl
 # Controller of the testProjectApp
###
angular.module 'testProjectApp'
  .controller 'DebugCtrl', ($scope, $cookies, $http) ->


  	$scope.accounts = []

  	$http.get("https://parxch.my.salesforce.com/services/data/v32.0/query?q=SELECT+ID,+Name+FROM+ACCOUNT+LIMIT+10").success (result)->
  		console.log result
  		$scope.accounts = result.records


    $scope.sessionId = $cookies.sid
    console.log $cookies.sid
    $scope.setSession = (sessionId)->
    	$cookies.sid = $scope.sessionId
    	$http.defaults.headers.common['Authorization'] = " OAuth " + $cookies.sid