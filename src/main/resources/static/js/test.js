var app = angular.module('testApp', []);

app.controller('testController', function($scope, $http) {
    $scope.test = "변수값을 변경합니다.";

    var init = function() {
        ajax();
    };

    var ajax = function() {
        $http.get("/test-json.json").then(
            function (resp) {
                console.log(resp);
            },
            function (e) {
                console.log(e);
            }
        );
    };

    init();
});