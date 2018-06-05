<%--
  Created by IntelliJ IDEA.
  User: ahui9
  Date: 6/12/2017
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
