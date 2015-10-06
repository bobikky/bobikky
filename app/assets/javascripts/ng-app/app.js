angular
    .module('AngularRails', [
        'ngRoute',
        'templates'
    ]).config(function ($routeProvider, $locationProvider) {
        $routeProvider
            .when('/', {
                templateUrl: 'wikis.html',
                controller: 'WikisCtrl'
            });
        $locationProvider.html5Mode({
            enabled: true,
            requireBase: false
        });
    });