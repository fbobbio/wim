<%@ page import="com.inti.sipel.wim.Baseclasif" %>



<div class="fieldcontain ${hasErrors(bean: baseclasifInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="baseclasif.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="20" value="${baseclasifInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseclasifInstance, field: 'basevehiculos', 'error')} ">
	<label for="basevehiculos">
		<g:message code="baseclasif.basevehiculos.label" default="Basevehiculos" />
		
	</label>
	<g:select name="basevehiculos" from="${com.inti.sipel.wim.Basevehiculo.list()}" multiple="multiple" optionKey="id" size="5" value="${baseclasifInstance?.basevehiculos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseclasifInstance, field: 'dispositivos', 'error')} ">
	<label for="dispositivos">
		<g:message code="baseclasif.dispositivos.label" default="Dispositivos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${baseclasifInstance?.dispositivos?}" var="d">
    <li><g:link controller="dispositivo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dispositivo" action="create" params="['baseclasif.id': baseclasifInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dispositivo.label', default: 'Dispositivo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: baseclasifInstance, field: 'planoperacions', 'error')} ">
	<label for="planoperacions">
		<g:message code="baseclasif.planoperacions.label" default="Planoperacions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${baseclasifInstance?.planoperacions?}" var="p">
    <li><g:link controller="planoperacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="planoperacion" action="create" params="['baseclasif.id': baseclasifInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'planoperacion.label', default: 'Planoperacion')])}</g:link>
</li>
</ul>


</div>

