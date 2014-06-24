<%@ page import="com.inti.sipel.wim.Alarmareg" %>



<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'valor', 'error')} ">
	<label for="valor">
		<g:message code="alarmareg.valor.label" default="Valor" />
		
	</label>
	<g:field name="valor" value="${fieldValue(bean: alarmaregInstance, field: 'valor')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="alarmareg.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="50" value="${alarmaregInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'alarma', 'error')} required">
	<label for="alarma">
		<g:message code="alarmareg.alarma.label" default="Alarma" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alarma" name="alarma.id" from="${com.inti.sipel.wim.Alarma.list()}" optionKey="id" required="" value="${alarmaregInstance?.alarma?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'dispositivo', 'error')} required">
	<label for="dispositivo">
		<g:message code="alarmareg.dispositivo.label" default="Dispositivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dispositivo" name="dispositivo.id" from="${com.inti.sipel.wim.Dispositivo.list()}" optionKey="id" required="" value="${alarmaregInstance?.dispositivo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'idAlarma', 'error')} required">
	<label for="idAlarma">
		<g:message code="alarmareg.idAlarma.label" default="Id Alarma" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idAlarma" type="number" value="${alarmaregInstance.idAlarma}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'idDispositivo', 'error')} required">
	<label for="idDispositivo">
		<g:message code="alarmareg.idDispositivo.label" default="Id Dispositivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idDispositivo" type="number" value="${alarmaregInstance.idDispositivo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaregInstance, field: 'instante', 'error')} required">
	<label for="instante">
		<g:message code="alarmareg.instante.label" default="Instante" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="instante" precision="day"  value="${alarmaregInstance?.instante}"  />

</div>

