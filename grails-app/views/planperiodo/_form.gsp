<%@ page import="com.inti.sipel.wim.Planperiodo" %>



<div class="fieldcontain ${hasErrors(bean: planperiodoInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="planperiodo.estado.label" default="Estado" />
		
	</label>
	<g:field name="estado" type="number" value="${planperiodoInstance.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: planperiodoInstance, field: 'fin', 'error')} required">
	<label for="fin">
		<g:message code="planperiodo.fin.label" default="Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fin" precision="day"  value="${planperiodoInstance?.fin}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: planperiodoInstance, field: 'idPlanOp', 'error')} required">
	<label for="idPlanOp">
		<g:message code="planperiodo.idPlanOp.label" default="Id Plan Op" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idPlanOp" type="number" value="${planperiodoInstance.idPlanOp}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: planperiodoInstance, field: 'inicio', 'error')} required">
	<label for="inicio">
		<g:message code="planperiodo.inicio.label" default="Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inicio" precision="day"  value="${planperiodoInstance?.inicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: planperiodoInstance, field: 'planoperacion', 'error')} required">
	<label for="planoperacion">
		<g:message code="planperiodo.planoperacion.label" default="Planoperacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="planoperacion" name="planoperacion.id" from="${com.inti.sipel.wim.Planoperacion.list()}" optionKey="id" required="" value="${planperiodoInstance?.planoperacion?.id}" class="many-to-one"/>

</div>

