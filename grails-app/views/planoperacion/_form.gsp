<%@ page import="com.inti.sipel.wim.Planoperacion" %>



<div class="fieldcontain ${hasErrors(bean: planoperacionInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="planoperacion.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="20" value="${planoperacionInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoperacionInstance, field: 'cantPeriodo', 'error')} ">
	<label for="cantPeriodo">
		<g:message code="planoperacion.cantPeriodo.label" default="Cant Periodo" />
		
	</label>
	<g:field name="cantPeriodo" type="number" value="${planoperacionInstance.cantPeriodo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoperacionInstance, field: 'baseclasif', 'error')} required">
	<label for="baseclasif">
		<g:message code="planoperacion.baseclasif.label" default="Baseclasif" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="baseclasif" name="baseclasif.id" from="${com.inti.sipel.wim.Baseclasif.list()}" optionKey="id" required="" value="${planoperacionInstance?.baseclasif?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planoperacionInstance, field: 'dispositivos', 'error')} ">
	<label for="dispositivos">
		<g:message code="planoperacion.dispositivos.label" default="Dispositivos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${planoperacionInstance?.dispositivos?}" var="d">
    <li><g:link controller="dispositivo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dispositivo" action="create" params="['planoperacion.id': planoperacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dispositivo.label', default: 'Dispositivo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: planoperacionInstance, field: 'planperiodos', 'error')} ">
	<label for="planperiodos">
		<g:message code="planoperacion.planperiodos.label" default="Planperiodos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${planoperacionInstance?.planperiodos?}" var="p">
    <li><g:link controller="planperiodo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="planperiodo" action="create" params="['planoperacion.id': planoperacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'planperiodo.label', default: 'Planperiodo')])}</g:link>
</li>
</ul>


</div>

