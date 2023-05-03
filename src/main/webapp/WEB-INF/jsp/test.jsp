<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="testApp">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body ng-controller="testController">
<span>{{ test }}</span>
<br/>
<input type="text" ng-model="test" />
</body>

<script src="/lib/admin/plugins/angularjs/angular.min.js"></script>
<script src="/js/test.js"></script>

</html>