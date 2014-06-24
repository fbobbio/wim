
<%@ page import="com.inti.sipel.wim.Sensor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sensor.label', default: 'Sensor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sensor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sensor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sensor">
			
				<g:if test="${sensorInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="sensor.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${sensorInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sensorInstance?.dispositivo}">
				<li class="fieldcontain">
					<span id="dispositivo-label" class="property-label"><g:message code="sensor.dispositivo.label" default="Dispositivo" /></span>
					
						<span class="property-value" aria-labelledby="dispositivo-label"><g:link controller="dispositivo" action="show" id="${sensorInstance?.dispositivo?.id}">${sensorInstance?.dispositivo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sensorInstance?.sensorcorrecs}">
				<li class="fieldcontain">
					<span id="sensorcorrecs-label" class="property-label"><g:message code="sensor.sensorcorrecs.label" default="Sensorcorrecs" /></span>
					
						<g:each in="${sensorInstance.sensorcorrecs}" var="s">
						<span class="property-value" aria-labelledby="sensorcorrecs-label"><g:link controller="sensorcorrec" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${sensorInstance?.sensortipo}">
				<li class="fieldcontain">
					<span id="sensortipo-label" class="property-label"><g:message code="sensor.sensortipo.label" default="Sensortipo" /></span>
					
						<span class="property-value" aria-labelledby="sensortipo-label"><g:link controller="sensortipo" action="show" id="${sensorInstance?.sensortipo?.id}">${sensorInstance?.sensortipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sensorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sensorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
