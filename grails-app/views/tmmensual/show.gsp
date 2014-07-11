
<%@ page import="com.inti.sipel.wim.Tmmensual" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tmmensual.label', default: 'Tmmensual')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tmmensual" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tmmensual" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tmmensual">
			
				<g:if test="${tmmensualInstance?.tmm}">
				<li class="fieldcontain">
					<span id="tmm-label" class="property-label"><g:message code="tmmensual.tmm.label" default="Tmm" /></span>
					
						<span class="property-value" aria-labelledby="tmm-label"><g:fieldValue bean="${tmmensualInstance}" field="tmm"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tmmensualInstance?.idBaseClasif}">
				<li class="fieldcontain">
					<span id="idBaseClasif-label" class="property-label"><g:message code="tmmensual.idBaseClasif.label" default="Id Base Clasif" /></span>
					
						<span class="property-value" aria-labelledby="idBaseClasif-label"><g:fieldValue bean="${tmmensualInstance}" field="idBaseClasif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tmmensualInstance?.idBaseVehiculo}">
				<li class="fieldcontain">
					<span id="idBaseVehiculo-label" class="property-label"><g:message code="tmmensual.idBaseVehiculo.label" default="Id Base Vehiculo" /></span>
					
						<span class="property-value" aria-labelledby="idBaseVehiculo-label"><g:fieldValue bean="${tmmensualInstance}" field="idBaseVehiculo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tmmensualInstance?.idTramo}">
				<li class="fieldcontain">
					<span id="idTramo-label" class="property-label"><g:message code="tmmensual.idTramo.label" default="Id Tramo" /></span>
					
						<span class="property-value" aria-labelledby="idTramo-label"><g:fieldValue bean="${tmmensualInstance}" field="idTramo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tmmensualInstance?.mes}">
				<li class="fieldcontain">
					<span id="mes-label" class="property-label"><g:message code="tmmensual.mes.label" default="Mes" /></span>
					
						<span class="property-value" aria-labelledby="mes-label"><g:fieldValue bean="${tmmensualInstance}" field="mes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tmmensualInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="tmmensual.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${tmmensualInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tmmensualInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tmmensualInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
