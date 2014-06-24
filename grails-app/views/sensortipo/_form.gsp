<%@ page import="com.inti.sipel.wim.Sensortipo" %>



<div class="fieldcontain ${hasErrors(bean: sensortipoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="sensortipo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="20" value="${sensortipoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensortipoInstance, field: 'sensors', 'error')} ">
	<label for="sensors">
		<g:message code="sensortipo.sensors.label" default="Sensors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sensortipoInstance?.sensors?}" var="s">
    <li><g:link controller="sensor" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sensor" action="create" params="['sensortipo.id': sensortipoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sensor.label', default: 'Sensor')])}</g:link>
</li>
</ul>


</div>

