<%@ page import="com.inti.sipel.wim.Alarma" %>



<div class="fieldcontain ${hasErrors(bean: alarmaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="alarma.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" maxlength="30" value="${alarmaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alarmaInstance, field: 'alarmaregs', 'error')} ">
	<label for="alarmaregs">
		<g:message code="alarma.alarmaregs.label" default="Alarmaregs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alarmaInstance?.alarmaregs?}" var="a">
    <li><g:link controller="alarmareg" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alarmareg" action="create" params="['alarma.id': alarmaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alarmareg.label', default: 'Alarmareg')])}</g:link>
</li>
</ul>


</div>

