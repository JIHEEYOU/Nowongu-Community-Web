<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
		body{
			background-image : url('logo_bg.png');
	  		background-size: cotain;
	  		background-repeat: no-repeat;
	  	}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap-4.6.2-dist/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기 창</title>

<link rel="stylesheet" type="text/css" href="<%=cp%>/board/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/board/css/created.css"/>

<script type="text/javascript" src="<%=cp%>/board/js/util.js"></script>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		
		str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.name.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}		
		f.name.value = str;
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		f.action = "<%=cp%>/write_process.jsp";
		f.submit();
		
	}

</script>


</head>
<body>

<div class="container" style="margin-top: 100px;">
	<div class="jumbotron">
		<div class="card">
			<div class="card-body">
				<h3>글 쓰 기</h3>
			</div>
		</div>
		
		<form action="write_process.jsp" method="post" name="myForm">
		<div id="bbsCreated">
			<p>
			<div class="bbsCreated_bottomLine">
				<dl>
					<dt><h4><b>제&nbsp;&nbsp;&nbsp;&nbsp;목</b></h4></dt>
					<dd>
					<input type="text" name="title" size="60" 
					maxlength="100" class="form-control"/>
					</dd>
				</dl>		
			</div>
			
			<div class="bbsCreated_bottomLine">
				<dl>
					<dt><h4><b>작성자</b></h4></dt>
					<dd>
					<input type="text" name="name" size="35" 
					maxlength="20" class="form-control"/>
					</dd>
				</dl>		
			</div>
			
			<div id="bbsCreated_content">
				<dl>
					<dt><h4><b>내&nbsp;&nbsp;&nbsp;&nbsp;용</b></h4></dt>
					<dd>
					<textarea rows="12" cols="63" name="content"
					class="form-control"></textarea>
					</dd>
				</dl>
			</div>
			
		</div>
		
		<div id="bbsCreated_footer">
				<input type="submit" value=" 등록하기 " class="btn btn-outline-secondary" onclick="sendIt();"/>
		</div>
		
		</form>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>