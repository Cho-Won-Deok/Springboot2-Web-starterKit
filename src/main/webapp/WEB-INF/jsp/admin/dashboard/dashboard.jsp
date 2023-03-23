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
  <!-- IonIcons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
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
<body class="hold-transition sidebar-mini">
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
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
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
          <!-- left -->
          <div class="col-lg-6">

            <div class="card card-danger">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->

            <div class="card card-primary">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->

            <div class="card card-info">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->

            <div class="card card-secondary">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->

            <div class="card card-default">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->

            <div class="card card-success">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">제목</h3>
                  <a href="javascript:void(0);">뭔가 상세링크</a>
                </div>
              </div>
              <div class="card-body">
                뭔가 내용
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->

          <!-- right -->
          <div class="col-lg-6">
            <div class="card card-row card-default">
              <div class="card-header bg-info">
                <h3 class="card-title">
                  In Progress
                </h3>
              </div>
              <div class="card-body">
                <div class="card card-light card-outline">
                  <div class="card-header">
                  <h5 class="card-title">소제목</h5>
                  <div class="card-tools">
                    <a href="#" class="btn btn-tool btn-link">상세보기</a>
                  </div>
                  </div>
                    <div class="card-body">
                      <p>뭔가 내용</p>
                    </div>
                </div>
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
<!-- AdminLTE -->
<script src="/lib/admin/adminlte.min.js"></script>
</body>
</html>
