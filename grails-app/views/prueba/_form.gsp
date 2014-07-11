<%@ page import="com.inti.sipel.wim.Prueba" %>



<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'instante', 'error')} ">
	<label for="instante">
		<g:message code="prueba.instante.label" default="Instante" />
		
	</label>
	<g:datePicker name="instante" precision="day"  value="${pruebaInstance?.instante}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'idDispositivo', 'error')} ">
	<label for="idDispositivo">
		<g:message code="prueba.idDispositivo.label" default="Id Dispositivo" />
		
	</label>
	<g:field name="idDispositivo" type="number" value="${pruebaInstance.idDispositivo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'carril', 'error')} ">
	<label for="carril">
		<g:message code="prueba.carril.label" default="Carril" />
		
	</label>
	<g:field name="carril" type="number" value="${pruebaInstance.carril}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'sentido', 'error')} ">
	<label for="sentido">
		<g:message code="prueba.sentido.label" default="Sentido" />
		
	</label>
	<g:field name="sentido" type="number" value="${pruebaInstance.sentido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'idRutaTramo', 'error')} ">
	<label for="idRutaTramo">
		<g:message code="prueba.idRutaTramo.label" default="Id Ruta Tramo" />
		
	</label>
	<g:field name="idRutaTramo" type="number" value="${pruebaInstance.idRutaTramo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'idBaseClasif', 'error')} ">
	<label for="idBaseClasif">
		<g:message code="prueba.idBaseClasif.label" default="Id Base Clasif" />
		
	</label>
	<g:field name="idBaseClasif" type="number" value="${pruebaInstance.idBaseClasif}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'idBaseVehiculo', 'error')} ">
	<label for="idBaseVehiculo">
		<g:message code="prueba.idBaseVehiculo.label" default="Id Base Vehiculo" />
		
	</label>
	<g:field name="idBaseVehiculo" type="number" value="${pruebaInstance.idBaseVehiculo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'tempRuta', 'error')} ">
	<label for="tempRuta">
		<g:message code="prueba.tempRuta.label" default="Temp Ruta" />
		
	</label>
	<g:field name="tempRuta" value="${fieldValue(bean: pruebaInstance, field: 'tempRuta')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'pesoTotal', 'error')} ">
	<label for="pesoTotal">
		<g:message code="prueba.pesoTotal.label" default="Peso Total" />
		
	</label>
	<g:field name="pesoTotal" value="${fieldValue(bean: pruebaInstance, field: 'pesoTotal')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'velocidad', 'error')} ">
	<label for="velocidad">
		<g:message code="prueba.velocidad.label" default="Velocidad" />
		
	</label>
	<g:field name="velocidad" type="number" value="${pruebaInstance.velocidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'aceleracion', 'error')} ">
	<label for="aceleracion">
		<g:message code="prueba.aceleracion.label" default="Aceleracion" />
		
	</label>
	<g:field name="aceleracion" value="${fieldValue(bean: pruebaInstance, field: 'aceleracion')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'updateTimestamp', 'error')} ">
	<label for="updateTimestamp">
		<g:message code="prueba.updateTimestamp.label" default="Update Timestamp" />
		
	</label>
	<input type="file" id="updateTimestamp" name="updateTimestamp" />

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'insertTimestamp', 'error')} ">
	<label for="insertTimestamp">
		<g:message code="prueba.insertTimestamp.label" default="Insert Timestamp" />
		
	</label>
	<input type="file" id="insertTimestamp" name="insertTimestamp" />

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'updateId', 'error')} ">
	<label for="updateId">
		<g:message code="prueba.updateId.label" default="Update Id" />
		
	</label>
	<g:textField name="updateId" maxlength="64" value="${pruebaInstance?.updateId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'insertId', 'error')} ">
	<label for="insertId">
		<g:message code="prueba.insertId.label" default="Insert Id" />
		
	</label>
	<g:textField name="insertId" maxlength="64" value="${pruebaInstance?.insertId}"/>

</div>

