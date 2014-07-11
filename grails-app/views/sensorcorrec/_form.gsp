<%@ page import="com.inti.sipel.wim.Sensorcorrec" %>



<div class="fieldcontain ${hasErrors(bean: sensorcorrecInstance, field: 'tempMax', 'error')} ">
	<label for="tempMax">
		<g:message code="sensorcorrec.tempMax.label" default="Temp Max" />
		
	</label>
	<g:field name="tempMax" value="${fieldValue(bean: sensorcorrecInstance, field: 'tempMax')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensorcorrecInstance, field: 'factor', 'error')} ">
	<label for="factor">
		<g:message code="sensorcorrec.factor.label" default="Factor" />
		
	</label>
	<g:field name="factor" value="${fieldValue(bean: sensorcorrecInstance, field: 'factor')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensorcorrecInstance, field: 'idSensor', 'error')} required">
	<label for="idSensor">
		<g:message code="sensorcorrec.idSensor.label" default="Id Sensor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idSensor" type="number" value="${sensorcorrecInstance.idSensor}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensorcorrecInstance, field: 'sensor', 'error')} required">
	<label for="sensor">
		<g:message code="sensorcorrec.sensor.label" default="Sensor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sensor" name="sensor.id" from="${com.inti.sipel.wim.Sensor.list()}" optionKey="id" required="" value="${sensorcorrecInstance?.sensor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sensorcorrecInstance, field: 'tempMin', 'error')} required">
	<label for="tempMin">
		<g:message code="sensorcorrec.tempMin.label" default="Temp Min" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tempMin" value="${fieldValue(bean: sensorcorrecInstance, field: 'tempMin')}" required=""/>

</div>

