// angular.module('AngularRails')
//     .controller('HomeCtrl', function ($scope) {
//         $scope.things = ['Angular', 'Rails 4.1', 'Working', 'Together!!'];
//     });

angular.module('AngularRails')

    .controller('WikisCtrl', ['$scope', '$window', '$http', function ($scope, $window, $http) {
    	var home = $scope;

    	home.wikis = [];
    	$http.get('/wikis.json').success(function(data){
    		home.wikis = data;
    	});

        $scope.go = function(hash) {
            $window.location.href = hash;
        };
    }])

    .controller('UserCtrl', ['$scope', '$window', function ($scope, $window) {
      $scope.go = function(hash) {
        $window.location.href = hash;
      };
    }])

    .controller('SearchCtrl', function ($scope,$http,$window) {
      $scope.getWikis = function(val) {

        return $http.get('/searchwiki', {
            params: {
                description:val
            }
          }).then(function(response){
            console.log(response);
            return response.data.map(function(wiki){
                return wiki.description
            })
          })

      };
    })
    ;
