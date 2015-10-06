// angular.module('AngularRails')
//     .controller('HomeCtrl', function ($scope) {
//         $scope.things = ['Angular', 'Rails 4.1', 'Working', 'Together!!'];
//     });

angular.module('AngularRails')
    .controller('WikisCtrl', ['$scope' , '$http', function ($scope,$http) {
    	var home = $scope;

    	home.wikis = [];

    	$http.get('/wikis.json').success(function(data){
    		home.wikis = data;
    	});
    }]);