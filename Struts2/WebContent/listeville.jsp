<%@ taglib uri="/struts-tags" prefix="s"%>

<s:if test="%{getListeVilleProf().isEmpty()}">
	<s:select label="Ville" class="txtfield" tabindex="13" list="listeAjaxVille" name="ville"></s:select>

</s:if>


<s:else>
	<s:select label="Ville" class="txtfield" tabindex="13" list="listeAjaxVille" name="ville"></s:select>
</s:else>

