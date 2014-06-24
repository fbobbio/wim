<%@ page import="com.inti.sipel.wim.Ta" %>



<div class="fieldcontain ${hasErrors(bean: taInstance, field: 'año', 'error')} ">
	<label for="año">
		<g:message code="ta.año.label" default="Año" />
		
	</label>
	<g:field name="año" type="number" value="${taInstance.año}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taInstance, field: 'transitoanual', 'error')} ">
	<label for="transitoanual">
		<g:message code="ta.transitoanual.label" default="Transitoanual" />
		
	</label>
	<g:field name="transitoanual" type="number" value="${taInstance.transitoanual}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taInstance, field: 'idtramo', 'error')} ">
	<label for="idtramo">
		<g:message code="ta.idtramo.label" default="Idtramo" />
		
	</label>
	<g:textField name="idtramo" maxlength="10" value="${taInstance?.idtramo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taInstance, field: 'idtipo', 'error')} ">
	<label for="idtipo">
		<g:message code="ta.idtipo.label" default="Idtipo" />
		
	</label>
	<g:textField name="idtipo" maxlength="10" value="${taInstance?.idtipo}"/>

</div>

