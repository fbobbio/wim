
<%@ page import="com.inti.sipel.wim.Basevehiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basevehiculo.label', default: 'Basevehiculo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-basevehiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-basevehiculo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list basevehiculo">
			
				<g:if test="${basevehiculoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="basevehiculo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${basevehiculoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basevehiculoInstance?.tipoVehiculo}">
				<li class="fieldcontain">
					<span id="tipoVehiculo-label" class="property-label"><g:message code="basevehiculo.tipoVehiculo.label" default="Tipo Vehiculo" /></span>
					
						<span class="property-value" aria-labelledby="tipoVehiculo-label"><g:fieldValue bean="${basevehiculoInstance}" field="tipoVehiculo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basevehiculoInstance?.cantEjes}">
				<li class="fieldcontain">
					<span id="cantEjes-label" class="property-label"><g:message code="basevehiculo.cantEjes.label" default="Cant Ejes" /></span>
					
						<span class="property-value" aria-labelledby="cantEjes-label"><g:fieldValue bean="${basevehiculoInstance}" field="cantEjes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basevehiculoInstance?.baseclasifs}">
				<li class="fieldcontain">
					<span id="baseclasifs-label" class="property-label"><g:message code="basevehiculo.baseclasifs.label" default="Baseclasifs" /></span>
					
						<g:each in="${basevehiculoInstance.baseclasifs}" var="b">
						<span class="property-value" aria-labelledby="baseclasifs-label"><g:link controller="baseclasif" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${basevehiculoInstance?.basedistejes}">
				<li class="fieldcontain">
					<span id="basedistejes-label" class="property-label"><g:message code="basevehiculo.basedistejes.label" default="Basedistejes" /></span>
					
						<g:each in="${basevehiculoInstance.basedistejes}" var="b">
						<span class="property-value" aria-labelledby="basedistejes-label"><g:link controller="basedisteje" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:basevehiculoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${basevehiculoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
