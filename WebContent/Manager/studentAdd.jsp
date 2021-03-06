<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>学生信息编辑</title>
 	<link href="css/bootstrap.min.css" rel="stylesheet" />
 	<link href="css/bootstrap-select.min.css" rel="stylesheet" />
 	<style type="text/css">
 		.dropdown-toggle {
 			height: 30px;
 		}
 	</style>
</head>
<body>
	<div>
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<form class="form-horizontal" id="studentAction" action="../studentadd?type=3" method="post">
						<div class="form-group">
								 <label for="studentId" class="col-sm-2 control-label">${sessionScope.msg1}</label>
							</div>
							<div class="form-group">
								 <label for="studentId" class="col-sm-2 control-label">学生学号</label>
								 <div class="col-sm-3">
								 	<input class="form-control" id="studentId" name="studentId" type="text" value=""  aria-required="true" placeholder="学生学号" />
								 </div>
								 	<input type="hidden" value="1" name="isupdate" id="isupdate" class="form-control" />
							</div>
						<div class="form-group">
							 <label for="classId" class="col-sm-2 control-label">就读班级</label>
							<div class="col-sm-5">
								<select class="selectpicker" name="classId" id="classId" data-live-search="true" aria-required="true">                                 
										<c:forEach items="${sessionScope.Student}" var="stu">
											<option value="${stu.studentclass }">${stu.studentclass}</option>
										</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							 <label for="studentName" class="col-sm-2 control-label">学生姓名</label>
							<div class="col-sm-5">
								<input class="form-control" id="studentName" name="studentName" type="text"  placeholder="学生姓名"  aria-required="true"/>
							</div>
						</div>
						<div class="form-group">
							 <label for="studentName" class="col-sm-2 control-label">学生手机号</label>
							<div class="col-sm-5">
								<input class="form-control" id="studentName" name="student_tel" type="text" placeholder="学生手机号"  aria-required="true"/>
							</div>
						</div>
						<div class="form-group">
							 <label for="studentPwd" class="col-sm-2 control-label">考试登录密码</label>
							<div class="col-sm-5">
								<input class="form-control" id="studentPwd" name="studentPwd" type="password" placeholder="学生考试登录密码"  aria-required="true"/>
							</div>
						</div>
						<br />
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-4">
								 <button id="sub" type="submit" class="btn btn-default btn-lg btn-block">
							 		提交
								 </button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- js引入 -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.min.js"></script>
    <script type="text/javascript">
    	$('.selectpicker').selectpicker({
    	    style: 'btn-default',
    	    size: 8
    	});
    </script>
</body>
</html>