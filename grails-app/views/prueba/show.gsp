
<%@ page import="com.inti.sipel.wim.Prueba" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prueba.label', default: 'Prueba')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prueba" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prueba" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prueba">
			
				<g:if test="${pruebaInstance?.instante}">
				<li class="fieldcontain">
					<span id="instante-label" class="property-label"><g:message code="prueba.instante.label" default="Instante" /></span>
					
						<span class="property-value" aria-labelledby="instante-label"><g:formatDate date="${pruebaInstance?.instante}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.idDispositivo}">
				<li class="fieldcontain">
					<span id="idDispositivo-label" class="property-label"><g:message code="prueba.idDispositivo.label" default="Id Dispositivo" /></span>
					
						<span class="property-value" aria-labelledby="idDispositivo-label"><g:fieldValue bean="${pruebaInstance}" field="idDispositivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.carril}">
				<li class="fieldcontain">
					<span id="carril-label" class="property-label"><g:message code="prueba.carril.label" default="Carril" /></span>
					
						<span class="property-value" aria-labelledby="carril-label"><g:fieldValue bean="${pruebaInstance}" field="carril"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.sentido}">
				<li class="fieldcontain">
					<span id="sentido-label" class="property-label"><g:message code="prueba.sentido.label" default="Sentido" /></span>
					
						<span class="property-value" aria-labelledby="sentido-label"><g:fieldValue bean="${pruebaInstance}" field="sentido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.idRutaTramo}">
				<li class="fieldcontain">
					<span id="idRutaTramo-label" class="property-label"><g:message code="prueba.idRutaTramo.label" default="Id Ruta Tramo" /></span>
					
						<span class="property-value" aria-labelledby="idRutaTramo-label"><g:fieldValue bean="${pruebaInstance}" field="idRutaTramo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.idBaseClasif}">
				<li class="fieldcontain">
					<span id="idBaseClasif-label" class="property-label"><g:message code="prueba.idBaseClasif.label" default="Id Base Clasif" /></span>
					
						<span class="property-value" aria-labelledby="idBaseClasif-label"><g:fieldValue bean="${pruebaInstance}" field="idBaseClasif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.idBaseVehiculo}">
				<li class="fieldcontain">
					<span id="idBaseVehiculo-label" class="property-label"><g:message code="prueba.idBaseVehiculo.label" default="Id Base Vehiculo" /></span>
					
						<span class="property-value" aria-labelledby="idBaseVehiculo-label"><g:fieldValue bean="${pruebaInstance}" field="idBaseVehiculo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.tempRuta}">
				<li class="fieldcontain">
					<span id="tempRuta-label" class="property-label"><g:message code="prueba.tempRuta.label" default="Temp Ruta" /></span>
					
						<span class="property-value" aria-labelledby="tempRuta-label"><g:fieldValue bean="${pruebaInstance}" field="tempRuta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.pesoTotal}">
				<li class="fieldcontain">
					<span id="pesoTotal-label" class="property-label"><g:message code="prueba.pesoTotal.label" default="Peso Total" /></span>
					
						<span class="property-value" aria-labelledby="pesoTotal-label"><g:fieldValue bean="${pruebaInstance}" field="pesoTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.velocidad}">
				<li class="fieldcontain">
					<span id="velocidad-label" class="property-label"><g:message code="prueba.velocidad.label" default="Velocidad" /></span>
					
						<span class="property-value" aria-labelledby="velocidad-label"><g:fieldValue bean="${pruebaInstance}" field="velocidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.aceleracion}">
				<li class="fieldcontain">
					<span id="aceleracion-label" class="property-label"><g:message code="prueba.aceleracion.label" default="Aceleracion" /></span>
					
						<span class="property-value" aria-labelledby="aceleracion-label"><g:fieldValue bean="${pruebaInstance}" field="aceleracion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.updateTimestamp}">
				<li class="fieldcontain">
					<span id="updateTimestamp-label" class="property-label"><g:message code="prueba.updateTimestamp.label" default="Update Timestamp" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.insertTimestamp}">
				<li class="fieldcontain">
					<span id="insertTimestamp-label" class="property-label"><g:message code="prueba.insertTimestamp.label" default="Insert Timestamp" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.updateId}">
				<li class="fieldcontain">
					<span id="updateId-label" class="property-label"><g:message code="prueba.updateId.label" default="Update Id" /></span>
					
						<span class="property-value" aria-labelledby="updateId-label"><g:fieldValue bean="${pruebaInstance}" field="updateId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.insertId}">
				<li class="fieldcontain">
					<span id="insertId-label" class="property-label"><g:message code="prueba.insertId.label" default="Insert Id" /></span>
					
						<span class="property-value" aria-labelledby="insertId-label"><g:fieldValue bean="${pruebaInstance}" field="insertId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pruebaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pruebaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
