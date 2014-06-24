<%@ page import="com.inti.sipel.wim.Regeje" %>



<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'pesoRuedaDer', 'error')} ">
	<label for="pesoRuedaDer">
		<g:message code="regeje.pesoRuedaDer.label" default="Peso Rueda Der" />
		
	</label>
	<g:field name="pesoRuedaDer" value="${fieldValue(bean: regejeInstance, field: 'pesoRuedaDer')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'pesoRuedaIzq', 'error')} ">
	<label for="pesoRuedaIzq">
		<g:message code="regeje.pesoRuedaIzq.label" default="Peso Rueda Izq" />
		
	</label>
	<g:field name="pesoRuedaIzq" value="${fieldValue(bean: regejeInstance, field: 'pesoRuedaIzq')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'distancia', 'error')} ">
	<label for="distancia">
		<g:message code="regeje.distancia.label" default="Distancia" />
		
	</label>
	<g:field name="distancia" value="${fieldValue(bean: regejeInstance, field: 'distancia')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'idDispositivo', 'error')} required">
	<label for="idDispositivo">
		<g:message code="regeje.idDispositivo.label" default="Id Dispositivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idDispositivo" type="number" value="${regejeInstance.idDispositivo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'idRegistro', 'error')} required">
	<label for="idRegistro">
		<g:message code="regeje.idRegistro.label" default="Id Registro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idRegistro" type="number" value="${regejeInstance.idRegistro}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'instante', 'error')} required">
	<label for="instante">
		<g:message code="regeje.instante.label" default="Instante" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="instante" precision="day"  value="${regejeInstance?.instante}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'ordenEje', 'error')} required">
	<label for="ordenEje">
		<g:message code="regeje.ordenEje.label" default="Orden Eje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ordenEje" type="number" value="${regejeInstance.ordenEje}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: regejeInstance, field: 'registro', 'error')} required">
	<label for="registro">
		<g:message code="regeje.registro.label" default="Registro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registro" name="registro.id" from="${com.inti.sipel.wim.Registro.list()}" optionKey="id" required="" value="${regejeInstance?.registro?.id}" class="many-to-one"/>

</div>

