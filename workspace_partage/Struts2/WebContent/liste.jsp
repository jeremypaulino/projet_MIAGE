<%@ taglib uri="/struts-tags" prefix="s"%>

<s:if test="%{getListeAjaxProf().isEmpty()}">
	<table class="table">
		<tr>
			<th>Prénom</th>
			<th>Nom</th>
			<th>E-mail</th>
			<th>CV</th>
			<th>Motivation</th>
			<th>Statut</th>
		</tr>


		<tr>
			<td colspan="6">Désolé nous n'avons trouvé aucun resultat pour
				cette recherche</td>
		</tr>
	</table>
</s:if>


<s:else>


	<table class="table">
		<tr>
			<th>Prénom</th>
			<th>Nom</th>
			<th>E-mail</th>
			<th>CV</th>
			<th>Motivation</th>
			<th>Statut</th>
		</tr>

		<s:iterator value="listeAjaxProf" var="element">
			<tr>
				<td><s:property value="prenom" /></td>
				<td><s:property value="nom" /></td>
				<td><s:property value="mail" /></td>
				
<%-- 				<td><s:property value="cv" /></td> --%>
				
				
				<td>
						<a href="<s:property value="cv"/>" >CV</a>
				</td>
				
				<td><s:property value="motivations" /></td>
				<td><s:property value="statut" /></td>
			</tr>
		</s:iterator>
	</table>

</s:else>


