<%@ page import="com.inti.sipel.wim.Basevehiculo" %>



<div class="fieldcontain ${hasErrors(bean: basevehiculoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="basevehiculo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="20" value="${basevehiculoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: basevehiculoInstance, field: 'tipoVehiculo', 'error')} ">
	<label for="tipoVehiculo">
		<g:message code="basevehiculo.tipoVehiculo.label" default="Tipo Vehiculo" />
		
	</label>
	<g:field name="tipoVehiculo" type="number" value="${basevehiculoInstance.tipoVehiculo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: basevehiculoInstance, field: 'cantEjes', 'error')} ">
	<label for="cantEjes">
		<g:message code="basevehiculo.cantEjes.label" default="Cant Ejes" />
		
	</label>
	<g:field name="cantEjes" type="number" value="${basevehiculoInstance.cantEjes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: basevehiculoInstance, field: 'baseclasifs', 'error')} ">
	<label for="baseclasifs">
		<g:message code="basevehiculo.baseclasifs.label" default="Baseclasifs" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: basevehiculoInstance, field: 'basedistejes', 'error')} ">
	<label for="basedistejes">
		<g:message code="basevehiculo.basedistejes.label" default="Basedistejes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${basevehiculoInstance?.basedistejes?}" var="b">
    <li><g:link controller="basedisteje" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="basedisteje" action="create" params="['basevehiculo.id': basevehiculoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'basedisteje.label', default: 'Basedisteje')])}</g:link>
</li>
</ul>


</div>

