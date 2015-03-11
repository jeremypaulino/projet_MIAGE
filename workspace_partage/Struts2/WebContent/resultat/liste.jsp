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
			<th>Moyenne</th>
			<th>Derniers cours</th>
			<th>Heures total</th>
		</tr>
		<tr>
			<td colspan="9">Désolé nous n'avons trouvé aucun resultat pour
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
			<th>Moyenne</th>
			<th>Derniers cours</th>
			<th>Heures total</th>
		</tr>

		<s:iterator value="listeAjaxProf" var="element">
			<tr>
				<td><s:property value="prenom" /></td>
				<td><s:property value="nom" /></td>
				<td><s:property value="mail" /></td>
				<td><a href="<s:property value="cv"/>">CV</a></td>
				<td><a href="<s:property value="motivations"/>">Motivations</a></td>
				<td><s:property value="statut" /></td>
				<td><s:property value="moyenne" /></td>
				<td><s:property value="derniers_cours" /></td>
				<td><s:property value="heures_total" /></td>
			</tr>
		</s:iterator>
	</table>

</s:else>


