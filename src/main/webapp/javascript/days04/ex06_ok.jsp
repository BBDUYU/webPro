<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   	String subject=request.getParameter("subject");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>ex06_ok.jsp</h3>
> ex06.html 전달받은 파라미터 subject : <%=subject%> <br>
<br>
<!-- input[type=radio name=subject value]*4>lable -->
<input type="radio" name="subject" value="kor"><label for="">국어</label>
<input type="radio" name="subject" value="eng"><label for="">영어</label>
<input type="radio" name="subject" value="mat"><label for="">수학</label>
<input type="radio" name="subject" value="pe"><label for="">체육</label>
<br>  
<button class="back">돌아가기</button>
<a href="javascript:history">돌아가기</a>
</body>
<script>
	document.querySelector("button.back").onclick=function(){
		location.href="ex06.html";
	}
</script>
<script>
	let subject = '<%= subject %>';
	/*
	const radios = document.querySelectorAll('input[type="radio"][name="subject"]');
	  radios.forEach(radio => {
	      if(radio.value==subject){
	    	  radio.checked=true;
	      };
	  });
	  */
	  document.querySelector('input[type="radio"][value="<%= subject %>"]').checked=true;
	  
</script>
</html>