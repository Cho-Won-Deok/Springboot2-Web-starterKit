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
<body class="hold-transition sidebar-mini" ng-app="app" ng-controller="echartController">
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
            <h1 class="m-0">EChart</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">EChart</li>
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
                  <h3 class="card-title">차트1</h3>
                </div>
              </div>
              <div class="card-body">
                <div id="chart1" style="height: 400px;"></div>
              </div>
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col-md-6 -->

          <!-- left -->
          <div class="col-md-6">
            <div class="card card-danger card-outline">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">차트2</h3>
                </div>
              </div>
              <div class="card-body">
                <div id="chart2" style="height: 400px;"></div>
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->

          <!-- right -->
          <div class="col-md-6">
            <div class="card card-outline">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">차트3</h3>
                </div>
              </div>
              <div class="card-body">
                <div id="chart3" style="height: 400px;"></div>
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

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="/lib/admin/plugins/jquery/jquery.min.js"></script>
<!-- angularjs-->
<script src="/lib/admin/plugins/angularjs/angular.min.js"></script>
<!-- echart -->
<script src="/lib/admin/plugins/echart/echarts.min.js"></script>
<!-- AdminLTE -->
<script src="/lib/admin/adminlte.min.js"></script>
<script>
var app = angular.module('app', []);
app.controller('echartController', function($scope, $http) {
  $scope.init = function() {
    $scope.initChart1();
    $scope.initChart2();
    $scope.initChart3();
  };

  $scope.initChart1 = function() {
    var echart = echarts.init(document.getElementById('chart1'));
    var option = {
      xAxis: {
        type: 'category',
        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
      },
      yAxis: {
        type: 'value'
      },
      series: [
        {
          data: [150, 230, 224, 218, 135, 147, 260],
          type: 'line'
        }
      ]
    };
    echart.setOption(option);
  };

  $scope.initChart2 = function() {
    var echart = echarts.init(document.getElementById('chart2'));
    var option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                  type: 'shadow'
                }
              },
              legend: {},
              grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
              },
              xAxis: [
                {
                  type: 'category',
                  data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                }
              ],
              yAxis: [
                {
                  type: 'value'
                }
              ],
              series: [
                {
                  name: 'Direct',
                  type: 'bar',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [320, 332, 301, 334, 390, 330, 320]
                },
                {
                  name: 'Email',
                  type: 'bar',
                  stack: 'Ad',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [120, 132, 101, 134, 90, 230, 210]
                },
                {
                  name: 'Union Ads',
                  type: 'bar',
                  stack: 'Ad',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [220, 182, 191, 234, 290, 330, 310]
                },
                {
                  name: 'Video Ads',
                  type: 'bar',
                  stack: 'Ad',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [150, 232, 201, 154, 190, 330, 410]
                },
                {
                  name: 'Search Engine',
                  type: 'bar',
                  data: [862, 1018, 964, 1026, 1679, 1600, 1570],
                  emphasis: {
                    focus: 'series'
                  },
                  markLine: {
                    lineStyle: {
                      type: 'dashed'
                    },
                    data: [[{ type: 'min' }, { type: 'max' }]]
                  }
                },
                {
                  name: 'Baidu',
                  type: 'bar',
                  barWidth: 5,
                  stack: 'Search Engine',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [620, 732, 701, 734, 1090, 1130, 1120]
                },
                {
                  name: 'Google',
                  type: 'bar',
                  stack: 'Search Engine',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [120, 132, 101, 134, 290, 230, 220]
                },
                {
                  name: 'Bing',
                  type: 'bar',
                  stack: 'Search Engine',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [60, 72, 71, 74, 190, 130, 110]
                },
                {
                  name: 'Others',
                  type: 'bar',
                  stack: 'Search Engine',
                  emphasis: {
                    focus: 'series'
                  },
                  data: [62, 82, 91, 84, 109, 110, 120]
                }
              ]
    };
    echart.setOption(option);
  };

  $scope.initChart3 = function() {
    var echart = echarts.init(document.getElementById('chart3'));
    var option = {
            legend: {
                top: 'bottom'
              },
              toolbox: {
                show: true,
                feature: {
                  mark: { show: true },
                  dataView: { show: true, readOnly: false },
                  restore: { show: true },
                  saveAsImage: { show: true }
                }
              },
              series: [
                {
                  name: 'Nightingale Chart',
                  type: 'pie',
                  radius: [50, 250],
                  center: ['50%', '50%'],
                  roseType: 'area',
                  itemStyle: {
                    borderRadius: 8
                  },
                  data: [
                    { value: 40, name: 'rose 1' },
                    { value: 38, name: 'rose 2' },
                    { value: 32, name: 'rose 3' },
                    { value: 30, name: 'rose 4' },
                    { value: 28, name: 'rose 5' },
                    { value: 26, name: 'rose 6' },
                    { value: 22, name: 'rose 7' },
                    { value: 18, name: 'rose 8' }
                  ]
                }
              ]
    };
    echart.setOption(option);
  };
    
  $scope.init();
});
</script>
</body>
</html>
