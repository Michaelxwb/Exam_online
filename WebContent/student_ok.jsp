<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>操作成功!</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<script language="javascript">
alert("<%=request.getAttribute("ret")%>");
window.location.href="../index.jsp";
</script>		
</body>
</html>