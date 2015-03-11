<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="%{getListeAjaxEleve().isEmpty()}">
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
			<th>pseudo</th>
			<th>Statut</th>
		</tr>

		<s:iterator value="listeAjaxEleve" var="element">
			<tr>
				<td><s:property value="prenom" /></td>
				<td><s:property value="nom" /></td>
				<td><s:property value="mail" /></td>
				<td><s:property value="pseudo" /></td>
			</tr>
		</s:iterator>
	</table>

</s:else>


