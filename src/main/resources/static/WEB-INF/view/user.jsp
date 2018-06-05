<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>客户关怀查询</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	
									
									<c:forEach items="${list}" var="care" varStatus="i">
										<tr>
											<td height="20" bgcolor="#FFFFFF"><div align="center"
													class="STYLE1">
													<div align="center">${i.count }</div>
												</div></td>
											<td height="20" bgcolor="#FFFFFF"><div align="center">
													<span class="STYLE1">${care.name}</span>
												</div></td>
											<td height="20" bgcolor="#FFFFFF"><div align="center">
													<span class="STYLE1">${care.password}</span>
												</div></td>
											</tr>
									</c:forEach>

	

</body>

</html>
