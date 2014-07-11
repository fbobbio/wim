<%@ page import="com.inti.sipel.wim.Tmmensual" %>



<div class="fieldcontain ${hasErrors(bean: tmmensualInstance, field: 'tmm', 'error')} ">
	<label for="tmm">
		<g:message code="tmmensual.tmm.label" default="Tmm" />
		
	</label>
	<g:field name="tmm" value="${fieldValue(bean: tmmensualInstance, field: 'tmm')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tmmensualInstance, field: 'idBaseClasif', 'error')} required">
	<label for="idBaseClasif">
		<g:message code="tmmensual.idBaseClasif.label" default="Id Base Clasif" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idBaseClasif" type="number" value="${tmmensualInstance.idBaseClasif}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tmmensualInstance, field: 'idBaseVehiculo', 'error')} required">
	<label for="idBaseVehiculo">
		<g:message code="tmmensual.idBaseVehiculo.label" default="Id Base Vehiculo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idBaseVehiculo" type="number" value="${tmmensualInstance.idBaseVehiculo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tmmensualInstance, field: 'idTramo', 'error')} required">
	<label for="idTramo">
		<g:message code="tmmensual.idTramo.label" default="Id Tramo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idTramo" type="number" value="${tmmensualInstance.idTramo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tmmensualInstance, field: 'mes', 'error')} required">
	<label for="mes">
		<g:message code="tmmensual.mes.label" default="Mes" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="mes" type="number" value="${tmmensualInstance.mes}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tmmensualInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="tmmensual.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="year" type="number" value="${tmmensualInstance.year}" required=""/>

</div>

