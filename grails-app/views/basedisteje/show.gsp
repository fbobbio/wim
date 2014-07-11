
<%@ page import="com.inti.sipel.wim.Basedisteje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basedisteje.label', default: 'Basedisteje')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-basedisteje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-basedisteje" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list basedisteje">
			
				<g:if test="${basedistejeInstance?.distanciaMin}">
				<li class="fieldcontain">
					<span id="distanciaMin-label" class="property-label"><g:message code="basedisteje.distanciaMin.label" default="Distancia Min" /></span>
					
						<span class="property-value" aria-labelledby="distanciaMin-label"><g:fieldValue bean="${basedistejeInstance}" field="distanciaMin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basedistejeInstance?.distanciaMax}">
				<li class="fieldcontain">
					<span id="distanciaMax-label" class="property-label"><g:message code="basedisteje.distanciaMax.label" default="Distancia Max" /></span>
					
						<span class="property-value" aria-labelledby="distanciaMax-label"><g:fieldValue bean="${basedistejeInstance}" field="distanciaMax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basedistejeInstance?.basevehiculo}">
				<li class="fieldcontain">
					<span id="basevehiculo-label" class="property-label"><g:message code="basedisteje.basevehiculo.label" default="Basevehiculo" /></span>
					
						<span class="property-value" aria-labelledby="basevehiculo-label"><g:link controller="basevehiculo" action="show" id="${basedistejeInstance?.basevehiculo?.id}">${basedistejeInstance?.basevehiculo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${basedistejeInstance?.idBaseVehiculo}">
				<li class="fieldcontain">
					<span id="idBaseVehiculo-label" class="property-label"><g:message code="basedisteje.idBaseVehiculo.label" default="Id Base Vehiculo" /></span>
					
						<span class="property-value" aria-labelledby="idBaseVehiculo-label"><g:fieldValue bean="${basedistejeInstance}" field="idBaseVehiculo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basedistejeInstance?.orden}">
				<li class="fieldcontain">
					<span id="orden-label" class="property-label"><g:message code="basedisteje.orden.label" default="Orden" /></span>
					
						<span class="property-value" aria-labelledby="orden-label"><g:fieldValue bean="${basedistejeInstance}" field="orden"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:basedistejeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${basedistejeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
