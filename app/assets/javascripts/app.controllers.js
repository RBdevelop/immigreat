angular.module('app.controllers', [])
.controller('homeCtrl', function($scope, $state) {
	$scope.goHome = function() {
		$state.go('home');
	};
	console.log('THis is working');
})
.controller('tweetCtrl', function($scope, $state) {
	$scope.goTweet = function() {
		$state.go('tweet');
	};
})
.controller('successCtrl', function($scope, $state) {
	$scope.goSuccess = function() {
		$state.go('success');
	};
});
