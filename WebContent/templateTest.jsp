<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>

<body>
	<table width="100%" height="100%" cellpadding="2" cellspacing="0" border="1">
		<tr>
			<td><jsp:include page="top.jsp" flush="false" /></td>
		</tr>
		<tr height="70%">
			<td><jsp:include page="<%=contentPage %>" flush="false" /></td>
		</tr>
		<tr>
			<td><jsp:include page="bottom.jsp" flush="false" /></td>
		</tr>
	
	</table>
</body>