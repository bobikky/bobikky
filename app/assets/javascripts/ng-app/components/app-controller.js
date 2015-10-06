angular.module('AngularRails')
    .controller('HomeCtrl', function ($scope) {
        $scope.things = ['Angular', 'Rails 4.1', 'Working', 'Together!!'];
    })
    .controller('UserCtrl', ['$scope', '$window', function ($scope, $window) {
      $scope.go = function(hash) {
        $window.location.href = hash;
      };
    }]);
