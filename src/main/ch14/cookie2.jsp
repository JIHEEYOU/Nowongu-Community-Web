<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-4.6.2-dist/css/bootstrap.min.css">
<title>Cookie</title>
</head>
<body>
	<form action="cookie_process2.jsp" method="POST">
		  <div class="form-group row">
    <label class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="id">
    </div>
  </div>
		  <div class="form-group row">
    <label class="col-sm-2 col-form-label">비밀번호</label>
    <div class="col-sm-3">
      <input type="password" class="form-control" name="passwd">
    </div>
  </div>
   <button type="submit" class="btn btn-primary">전송</button>
	</form>
<script src="../bootstrap-4.6.2-dist/jquery/jquery-3.5.1.js"></script>
<script src="../bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>