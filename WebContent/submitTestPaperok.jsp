<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>操作成功!</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
<script language="javascript">
alert("<%=request.getAttribute("submitTestPaperok")%>");
window.open('../index.jsp','','toolbar,menubar,scrollbars,resizable,status,location,directories,copyhistory,height=600,width=778');
window.close();
</script>		
</body>
</html>