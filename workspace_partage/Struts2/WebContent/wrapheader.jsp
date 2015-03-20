
<%@ taglib uri="/struts-tags" prefix="s"%>

<s:if test="%{#session.log=='false'}">

	<s:include value="header.jsp"></s:include>

</s:if>

<s:elseif test="%{#session.log=='true'}">

	<s:if test="%{#session.type=='administrateur'}">
		<s:include value="headeradmin.jsp"></s:include>
	</s:if>

	<s:elseif test="%{#session.type=='eleve'}">
		<s:include value="headereleve.jsp"></s:include>
	</s:elseif>

	<s:elseif test="%{#session.type=='professeur'}">
		<s:include value="headerprof.jsp"></s:include>
	</s:elseif>

</s:elseif>

<s:else>

	<s:include value="header.jsp"></s:include>

</s:else>