<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
	var xmlhttp = null;
	/*通过异步传输XMLHTTP发送参数到ajaxServlet，返回符合条件的XML文档*/
	function getResult() {
		var user_id_value = document.getElementById('uname').value;
		var url = "ajaxServlet?textValue="+user_id_value;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (xmlhttp) {
			xmlhttp.open("GET",url, true);
			xmlhttp.onreadystatechange = complete;
			xmlhttp.send(null);
		}
	}
	
	/*分析返回的XML文档*/
	function complete() {
		if (xmlhttp.readyState == 4 )
		{
			if ( xmlhttp.status == 200) {
				  document.getElementById("divContent").innerHTML = xmlhttp.responseText;
			}
		}
	}
</script>
</head>
<!-- onLoad="getResult()"  -->
<body>
  <input type="text" id="uname"><input id="btn" type="button" value="提交" onclick="getResult();">
    <hr>
    <div id="divContent"></div>
</body>