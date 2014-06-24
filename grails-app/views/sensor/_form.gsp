<%@ page import="com.inti.sipel.wim.Sensor" %>



<div class="fieldcontain ${hasErrors(bean: sensorInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="sensor.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="20" value="${sensorInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensorInstance, field: 'dispositivo', 'error')} required">
	<label for="dispositivo">
		<g:message code="sensor.dispositivo.label" default="Dispositivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dispositivo" name="dispositivo.id" from="${com.inti.sipel.wim.Dispositivo.list()}" optionKey="id" required="" value="${sensorInstance?.dispositivo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensorInstance, field: 'sensorcorrecs', 'error')} ">
	<label for="sensorcorrecs">
		<g:message code="sensor.sensorcorrecs.label" default="Sensorcorrecs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sensorInstance?.sensorcorrecs?}" var="s">
    <li><g:link controller="sensorcorrec" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sensorcorrec" action="create" params="['sensor.id': sensorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sensorcorrec.label', default: 'Sensorcorrec')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: sensorInstance, field: 'sensortipo', 'error')} required">
	<label for="sensortipo">
		<g:message code="sensor.sensortipo.label" default="Sensortipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sensortipo" name="sensortipo.id" from="${com.inti.sipel.wim.Sensortipo.list()}" optionKey="id" required="" value="${sensorInstance?.sensortipo?.id}" class="many-to-one"/>

</div>

