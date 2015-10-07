angular
    .module('AngularRails', [
        'ngRoute',
        'templates',
        'ngSanitize'
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
