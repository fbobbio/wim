<%@ page import="com.inti.sipel.wim.Basedisteje" %>



<div class="fieldcontain ${hasErrors(bean: basedistejeInstance, field: 'distanciaMin', 'error')} ">
	<label for="distanciaMin">
		<g:message code="basedisteje.distanciaMin.label" default="Distancia Min" />
		
	</label>
	<g:field name="distanciaMin" value="${fieldValue(bean: basedistejeInstance, field: 'distanciaMin')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: basedistejeInstance, field: 'distanciaMax', 'error')} ">
	<label for="distanciaMax">
		<g:message code="basedisteje.distanciaMax.label" default="Distancia Max" />
		
	</label>
	<g:field name="distanciaMax" value="${fieldValue(bean: basedistejeInstance, field: 'distanciaMax')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: basedistejeInstance, field: 'basevehiculo', 'error')} required">
	<label for="basevehiculo">
		<g:message code="basedisteje.basevehiculo.label" default="Basevehiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="basevehiculo" name="basevehiculo.id" from="${com.inti.sipel.wim.Basevehiculo.list()}" optionKey="id" required="" value="${basedistejeInstance?.basevehiculo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: basedistejeInstance, field: 'idBaseVehiculo', 'error')} required">
	<label for="idBaseVehiculo">
		<g:message code="basedisteje.idBaseVehiculo.label" default="Id Base Vehiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idBaseVehiculo" type="number" value="${basedistejeInstance.idBaseVehiculo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: basedistejeInstance, field: 'orden', 'error')} required">
	<label for="orden">
		<g:message code="basedisteje.orden.label" default="Orden" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="orden" type="number" value="${basedistejeInstance.orden}" required=""/>

</div>

