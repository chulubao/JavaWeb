<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jQuery/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(function(){
        //为输入框绑定事件
        $("#btn").click(function(){
            //1、点击提交后获得输入框的内容
            var name = $("#uname").val();
            //AJAX回调(调用后台方法返回数据)
            $.get("ContentServlet",{"uname":name},function(data){
                document.getElementById("divContent").innerHTML = data;
            })
        })
    })
</script>
</head>
<body>
    <input type="text" id="uname"><input id="btn" type="button" value="提交">
    <hr>
    <div id="divContent"></div>

</body>
</html>