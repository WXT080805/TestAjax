<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- <script type="text/javascript">
	function  testJson1(){ 
	    var province_name=$("#province").val();
	    alert(province_name);
	    $.ajax({
	    type:"POST",
	    cache:false,
	    url:"<c:url value="/sys/getCity"/>",
	    data:{"province_name":province_name},
	    dataType:"json",
	    scriptCharset:"utf-8",
	    success : function(data){
			if(data!=null){
				$("#city").html('<option value="">选择市</option>');
				 $(data).each(function(index){
				$("#city").append(
						'<option onclick="testJson2()" value="'+data[index].name+'">'+data[index].name+'</option>'
	                 );
				  });	
			}
		},
		error:function(data){
			alert("查询城市失败了！");
		 }
	    });
	} 
	
	
	
	function  testJson2(){ 
	    var city_name=$("#city").val();
	    alert(city_name);
	    $.ajax({
	    type:"POST",
	    cache:false,
	    url:"<c:url value="/sys/getCounty"/>",
	    data:{"city_name":city_name},
	    dataType:"json",
	    scriptCharset:"utf-8",
	    success : function(data){
			if(data!=null){
				$("#county").html('<option value="">县/区</option>');
				 $(data).each(function(index){
				$("#county").append(
						'<option value="'+data[index].name+'">'+data[index].name+'</option>'
	                 );
				  });
			}
		},
		error:function(data){
			alert("查询城市失败了！");
		 }
	    }); 
	} 	
</script> -->
	
    <table border="">
    	<tr>
    		<td>用户ID</td>
			<td>姓名</td>
			<td>密码</td>
			<td>创建时间</td>
    	</tr>
    	<c:forEach items="${users }" var="user">
    		<tr>
	    		<td>${user.id }</td>
				<td>${user.name }</td>
				<td>${user.pwd }</td>
				<td>${user.create_time }</td>
    		</tr>
    	</c:forEach>
    	
    </table>
</body>
</html>