<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>
<%@ include file="/WEB-INF/views/common.jspf" %>
<style>
	p {
		transition : transform 1s;
	}
	
</style>
<script type="text/javascript">
/* 	var member = {
		email : "xxx@webapp.com",
		password : "1234",
		name : "홍길동",
		gender : "female",
		hobby : ["programming", "reading"],
		comment : "asdf",
		reception : false
	}; */

$(document).ready(function(){
	$('button').on("click", function(){
		
		//Ajax(Async javascript and xml)
		$.getJSON("member.json", function(member){
			var message = "email = "+member.email + "<br>"+
						  "name = "+member.name + "<br>"+
						  "password = "+member.password + "<br>"+
						  "gender = "+member.gender + "<br>"+
						  "hobby = "+member.hobby + "<br>"+
						  "reception = "+member.reception + "<br>";
			
			$('p').prepend(message);
			
			$.each(member.hobby, function(value){
				alert("hobby["+value+"] = "+member.hobby[value]);
			});
		});
	});
	
	$('p').on("click", function(){
		$(this).css("transform", "translate(50px,0)");
	});
});

</script>
</head>
<body>
<h1>template</h1>
<button>member print1</button>
<button>member print2</button>
<p>
	print1
</p>
<p>
	print2
</p>

</body>
</html>