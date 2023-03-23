<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/lib/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- ui-grid -->
  <link rel="stylesheet" href="/lib/admin/plugins/ui-grid/ui-grid.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/css/admin/adminlte.min.css">
</head>
<!--
`body` tag options:

  Apply one or more of the following classes to to the body tag
  to get the desired effect

  * sidebar-collapse
  * sidebar-mini
-->
<body class="hold-transition sidebar-mini" ng-app="app"  ng-controller="uigridController">
<div class="wrapper">

  <%@ include file="/WEB-INF/jsp/admin/common/nav.jsp" %>

  <%@ include file="/WEB-INF/jsp/admin/common/aside.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Charts</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">UI Grid</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- center -->
          <div class="col-12">

            <div class="card card-primary card-outline">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">그리드</h3>
                </div>
              </div>
              <div class="card-body">
                <div style="height: 800px;" ui-grid="gridOptions" ui-grid-pagination></div>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <%@ include file="/WEB-INF/jsp/admin/common/footer.jsp" %>

</div>
<!-- ./wrapper -->

<div class="modal fade" id="modal-lg" aria-hidden="true" style="display: none;">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Large Modal</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <p>{{ selectedRow.data }}</p>
        <p>{{ selectedRow.custom }}</p>
      </div>
      <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/lib/admin/plugins/jquery/jquery.min.js"></script>
<!-- angularjs-->
<script src="/lib/admin/plugins/angularjs/angular.min.js"></script>
<!-- ui-grid-->
<script src="/lib/admin/plugins/ui-grid/ui-grid.min.js"></script>
<script src="/lib/admin/plugins/ui-grid/ui-grid.language.ko.min.js"></script>
<!-- bootstrap -->
<script src="/lib/admin/plugins/bootstrap/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="/lib/admin/adminlte.min.js"></script>
<script>
var app = angular.module('app', ['ui.grid', 'ui.grid.exporter', 'ui.grid.pagination']);
app.controller('uigridController', function($scope, $http, i18nService) {
  i18nService.setCurrentLang('ko'); //ui-grid.language.ko.js 파일에 pagination.of 항목이 없어서 임의로 추가함

  $scope.init = function() {
    $scope.selectedRow = {};
    $scope.initGrid();
  };

  $scope.initGrid = function() {
    $scope.customCell1 = '<div class=\"ui-grid-cell-contents\">' +
                        '<span>{{ row.entity.custom + "커스텀" }}</span>' +
                        '</div>';
    $scope.customCell2 = '<div class=\"ui-grid-cell-contents\">' +
                        '<button type="button" class="btn btn-block btn-primary btn-sm" data-toggle="modal" data-target="#modal-lg" ng-click="grid.appScope.showModal(row.entity);">상세</button>' +
                        '</div>';

      $scope.gridOptions = {
        columnDefs: [ //그리드 컬럼 설정
          {
            field:'data',
            name: '데이터',
            headerCellClass: "alignC"
          },
          {
            name: '커스텀',
            headerCellClass: "alignC",
            width: '20%',
            cellTemplate: $scope.customCell1
          },
          {
              name: '상세',
              headerCellClass: "alignC",
              width: '8%',
              cellTemplate: $scope.customCell2
          },
        ],
        data: [
          {
            data: "데이터1",
            custom: "커스텀 ->"
          }
        ], //그리드 데이터
        enableGridMenu: true, //그리드 메뉴 활성화 여부
        enableHorizontalScrollbar: 0, //그리드 가로스크롤 제어
        exporterMenuAllData: false, //export 메뉴 비활성화 여부
        exporterMenuCsv: false, //csv export 메뉴 비활성화 여부
        exporterMenuExcel: false, //excel export 메뉴 비활성화 여부
        exporterMenuPdf: false, //pdf export 메뉴 비활성화 여부
        paginationPageSize: 20, //기본 페이지 사이즈
        paginationPageSizes: [20, 50, 75, 100], //페이지 사이즈 조절 버튼
        rowHeight: 40, //그리드 row 높이 설정
        //rowTemplate: $scope.rowTpl,
        onRegisterApi: function (gridApi) { //그리드 렌더링 완료시 실행할 콜백함수 등록
          $scope.gridApi = gridApi;
        }
      };

      $scope.showModal = function(row) {
        $scope.selectedRow = row;
        console.log(row);
      }
  };


  $scope.init();
});
</script>
</body>
</html>
