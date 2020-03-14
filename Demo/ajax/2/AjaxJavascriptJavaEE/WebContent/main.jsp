<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
	var req = null;
	/*通过异步传输XMLHTTP发送参数到ajaxServlet，返回符合条件的XML文档*/
	function getResult() {
		var url = "ajaxServlet?action=send";
		if (window.XMLHttpRequest) {
			req = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (req) {
			req.open("GET", url, true);
			req.onreadystatechange = complete;
			req.send(null);
		}
	}
	/*分析返回的XML文档*/
	function complete() {
		if (req.readyState == 4 )
		{
			if ( req.status == 200) {
				var type = req.responseXML.getElementsByTagName("type_name");
				var str = new Array();
				for (var i = 0; i < type.length; i++) {
					str[i] = type[i].firstChild.data;
					document.all['td'].innerHTML += str[i] + "<br>";
				}
			}
		}
	}
</script>
</head>
<!-- onLoad="getResult()"  -->
<body>
	<input type="button" value="提交" onclick="getResult();">
	<hr>
	<table>
		<tr>
			<td id="td"></td>
		</tr>
	</table>

</body>