<%@ page import="com.inti.sipel.wim.Rutatramo" %>



<div class="fieldcontain ${hasErrors(bean: rutatramoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="rutatramo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="20" value="${rutatramoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutatramoInstance, field: 'kmHasta', 'error')} ">
	<label for="kmHasta">
		<g:message code="rutatramo.kmHasta.label" default="Km Hasta" />
		
	</label>
	<g:field name="kmHasta" type="number" value="${rutatramoInstance.kmHasta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutatramoInstance, field: 'dispositivos', 'error')} ">
	<label for="dispositivos">
		<g:message code="rutatramo.dispositivos.label" default="Dispositivos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rutatramoInstance?.dispositivos?}" var="d">
    <li><g:link controller="dispositivo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dispositivo" action="create" params="['rutatramo.id': rutatramoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dispositivo.label', default: 'Dispositivo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: rutatramoInstance, field: 'kmDesde', 'error')} required">
	<label for="kmDesde">
		<g:message code="rutatramo.kmDesde.label" default="Km Desde" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="kmDesde" type="number" value="${rutatramoInstance.kmDesde}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutatramoInstance, field: 'registros', 'error')} ">
	<label for="registros">
		<g:message code="rutatramo.registros.label" default="Registros" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rutatramoInstance?.registros?}" var="r">
    <li><g:link controller="registro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registro" action="create" params="['rutatramo.id': rutatramoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registro.label', default: 'Registro')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: rutatramoInstance, field: 'ruta', 'error')} required">
	<label for="ruta">
		<g:message code="rutatramo.ruta.label" default="Ruta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ruta" name="ruta.id" from="${com.inti.sipel.wim.Ruta.list()}" optionKey="id" required="" value="${rutatramoInstance?.ruta?.id}" class="many-to-one"/>

</div>

