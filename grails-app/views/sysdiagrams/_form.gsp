<%@ page import="com.inti.sipel.wim.Sysdiagrams" %>



<div class="fieldcontain ${hasErrors(bean: sysdiagramsInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="sysdiagrams.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="160" required="" value="${sysdiagramsInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sysdiagramsInstance, field: 'definition', 'error')} ">
	<label for="definition">
		<g:message code="sysdiagrams.definition.label" default="Definition" />
		
	</label>
	<input type="file" id="definition" name="definition" />

</div>

<div class="fieldcontain ${hasErrors(bean: sysdiagramsInstance, field: 'principalId', 'error')} required">
	<label for="principalId">
		<g:message code="sysdiagrams.principalId.label" default="Principal Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="principalId" type="number" value="${sysdiagramsInstance.principalId}" required=""/>

</div>

