<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="#session.login != 'true'">
<jsp:forward page="<%= request.getContextPath() %>login.jsp" />
</s:if>