
<%@ page import="com.inti.sipel.wim.Sensorcorrec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sensorcorrec.label', default: 'Sensorcorrec')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sensorcorrec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sensorcorrec" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sensorcorrec">
			
				<g:if test="${sensorcorrecInstance?.tempMax}">
				<li class="fieldcontain">
					<span id="tempMax-label" class="property-label"><g:message code="sensorcorrec.tempMax.label" default="Temp Max" /></span>
					
						<span class="property-value" aria-labelledby="tempMax-label"><g:fieldValue bean="${sensorcorrecInstance}" field="tempMax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sensorcorrecInstance?.factor}">
				<li class="fieldcontain">
					<span id="factor-label" class="property-label"><g:message code="sensorcorrec.factor.label" default="Factor" /></span>
					
						<span class="property-value" aria-labelledby="factor-label"><g:fieldValue bean="${sensorcorrecInstance}" field="factor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sensorcorrecInstance?.idSensor}">
				<li class="fieldcontain">
					<span id="idSensor-label" class="property-label"><g:message code="sensorcorrec.idSensor.label" default="Id Sensor" /></span>
					
						<span class="property-value" aria-labelledby="idSensor-label"><g:fieldValue bean="${sensorcorrecInstance}" field="idSensor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sensorcorrecInstance?.sensor}">
				<li class="fieldcontain">
					<span id="sensor-label" class="property-label"><g:message code="sensorcorrec.sensor.label" default="Sensor" /></span>
					
						<span class="property-value" aria-labelledby="sensor-label"><g:link controller="sensor" action="show" id="${sensorcorrecInstance?.sensor?.id}">${sensorcorrecInstance?.sensor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sensorcorrecInstance?.tempMin}">
				<li class="fieldcontain">
					<span id="tempMin-label" class="property-label"><g:message code="sensorcorrec.tempMin.label" default="Temp Min" /></span>
					
						<span class="property-value" aria-labelledby="tempMin-label"><g:fieldValue bean="${sensorcorrecInstance}" field="tempMin"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:sensorcorrecInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${sensorcorrecInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
