<%@ page import="com.inti.sipel.wim.Registro" %>



<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'carril', 'error')} ">
	<label for="carril">
		<g:message code="registro.carril.label" default="Carril" />
		
	</label>
	<g:field name="carril" type="number" value="${registroInstance.carril}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'sentido', 'error')} ">
	<label for="sentido">
		<g:message code="registro.sentido.label" default="Sentido" />
		
	</label>
	<g:field name="sentido" type="number" value="${registroInstance.sentido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'idBaseClasif', 'error')} ">
	<label for="idBaseClasif">
		<g:message code="registro.idBaseClasif.label" default="Id Base Clasif" />
		
	</label>
	<g:field name="idBaseClasif" type="number" value="${registroInstance.idBaseClasif}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'idBaseVehiculo', 'error')} ">
	<label for="idBaseVehiculo">
		<g:message code="registro.idBaseVehiculo.label" default="Id Base Vehiculo" />
		
	</label>
	<g:field name="idBaseVehiculo" type="number" value="${registroInstance.idBaseVehiculo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'tempRuta', 'error')} ">
	<label for="tempRuta">
		<g:message code="registro.tempRuta.label" default="Temp Ruta" />
		
	</label>
	<g:field name="tempRuta" value="${fieldValue(bean: registroInstance, field: 'tempRuta')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'pesoTotal', 'error')} ">
	<label for="pesoTotal">
		<g:message code="registro.pesoTotal.label" default="Peso Total" />
		
	</label>
	<g:field name="pesoTotal" value="${fieldValue(bean: registroInstance, field: 'pesoTotal')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'velocidad', 'error')} ">
	<label for="velocidad">
		<g:message code="registro.velocidad.label" default="Velocidad" />
		
	</label>
	<g:field name="velocidad" value="${fieldValue(bean: registroInstance, field: 'velocidad')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'aceleracion', 'error')} ">
	<label for="aceleracion">
		<g:message code="registro.aceleracion.label" default="Aceleracion" />
		
	</label>
	<g:field name="aceleracion" value="${fieldValue(bean: registroInstance, field: 'aceleracion')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'dispositivo', 'error')} required">
	<label for="dispositivo">
		<g:message code="registro.dispositivo.label" default="Dispositivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dispositivo" name="dispositivo.id" from="${com.inti.sipel.wim.Dispositivo.list()}" optionKey="id" required="" value="${registroInstance?.dispositivo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'instante', 'error')} required">
	<label for="instante">
		<g:message code="registro.instante.label" default="Instante" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="instante" precision="day"  value="${registroInstance?.instante}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'regejes', 'error')} ">
	<label for="regejes">
		<g:message code="registro.regejes.label" default="Regejes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registroInstance?.regejes?}" var="r">
    <li><g:link controller="regeje" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regeje" action="create" params="['registro.id': registroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regeje.label', default: 'Regeje')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: registroInstance, field: 'rutatramo', 'error')} required">
	<label for="rutatramo">
		<g:message code="registro.rutatramo.label" default="Rutatramo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rutatramo" name="rutatramo.id" from="${com.inti.sipel.wim.Rutatramo.list()}" optionKey="id" required="" value="${registroInstance?.rutatramo?.id}" class="many-to-one"/>

</div>

