<%@ page import="com.inti.sipel.wim.Dispositivo" %>



<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="dispositivo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="30" value="${dispositivoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'ipservidor', 'error')} ">
	<label for="ipservidor">
		<g:message code="dispositivo.ipservidor.label" default="Ipservidor" />
		
	</label>
	<g:textField name="ipservidor" maxlength="20" value="${dispositivoInstance?.ipservidor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'alarmaregs', 'error')} ">
	<label for="alarmaregs">
		<g:message code="dispositivo.alarmaregs.label" default="Alarmaregs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${dispositivoInstance?.alarmaregs?}" var="a">
    <li><g:link controller="alarmareg" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alarmareg" action="create" params="['dispositivo.id': dispositivoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alarmareg.label', default: 'Alarmareg')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'baseclasif', 'error')} required">
	<label for="baseclasif">
		<g:message code="dispositivo.baseclasif.label" default="Baseclasif" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="baseclasif" name="baseclasif.id" from="${com.inti.sipel.wim.Baseclasif.list()}" optionKey="id" required="" value="${dispositivoInstance?.baseclasif?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'planoperacion', 'error')} required">
	<label for="planoperacion">
		<g:message code="dispositivo.planoperacion.label" default="Planoperacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="planoperacion" name="planoperacion.id" from="${com.inti.sipel.wim.Planoperacion.list()}" optionKey="id" required="" value="${dispositivoInstance?.planoperacion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'registros', 'error')} ">
	<label for="registros">
		<g:message code="dispositivo.registros.label" default="Registros" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${dispositivoInstance?.registros?}" var="r">
    <li><g:link controller="registro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registro" action="create" params="['dispositivo.id': dispositivoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registro.label', default: 'Registro')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'rutatramo', 'error')} required">
	<label for="rutatramo">
		<g:message code="dispositivo.rutatramo.label" default="Rutatramo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rutatramo" name="rutatramo.id" from="${com.inti.sipel.wim.Rutatramo.list()}" optionKey="id" required="" value="${dispositivoInstance?.rutatramo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dispositivoInstance, field: 'sensors', 'error')} ">
	<label for="sensors">
		<g:message code="dispositivo.sensors.label" default="Sensors" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${dispositivoInstance?.sensors?}" var="s">
    <li><g:link controller="sensor" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sensor" action="create" params="['dispositivo.id': dispositivoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sensor.label', default: 'Sensor')])}</g:link>
</li>
</ul>


</div>

