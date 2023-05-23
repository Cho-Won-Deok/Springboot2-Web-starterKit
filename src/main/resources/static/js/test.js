function datData (){
    return new Promise(function(resolve, reject) {
        let data = {
            'result':'ok',
            'data' : [
                {
                    "title": "제목1",
                    "content": "내용1"
                },
                {
                    "title": "제목2",
                    "content": "내용2"
                },
                {
                    "title": "제목3",
                    "content": "내용33"
                }
            ]

        };

        setTimeout(() => {
            resolve(data);
        }, 1000);
        
    });
}


var app = angular.module('testApp', []);

app.controller('testController', function($scope, $http) {
    $scope.test = "변수값을 변경합니다.";

    var init = function() {
        ajax();
        datData().then(function(result) {
            console.log(result);
        });
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