<%@ page import="com.inti.sipel.wim.Ruta" %>



<div class="fieldcontain ${hasErrors(bean: rutaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="ruta.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="50" value="${rutaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutaInstance, field: 'rutatramos', 'error')} ">
	<label for="rutatramos">
		<g:message code="ruta.rutatramos.label" default="Rutatramos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rutaInstance?.rutatramos?}" var="r">
    <li><g:link controller="rutatramo" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rutatramo" action="create" params="['ruta.id': rutaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rutatramo.label', default: 'Rutatramo')])}</g:link>
</li>
</ul>


</div>

