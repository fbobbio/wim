
<%@ page import="com.inti.sipel.wim.Registro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registro.label', default: 'Registro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registro">
			
				<g:if test="${registroInstance?.carril}">
				<li class="fieldcontain">
					<span id="carril-label" class="property-label"><g:message code="registro.carril.label" default="Carril" /></span>
					
						<span class="property-value" aria-labelledby="carril-label"><g:fieldValue bean="${registroInstance}" field="carril"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.sentido}">
				<li class="fieldcontain">
					<span id="sentido-label" class="property-label"><g:message code="registro.sentido.label" default="Sentido" /></span>
					
						<span class="property-value" aria-labelledby="sentido-label"><g:fieldValue bean="${registroInstance}" field="sentido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.idBaseClasif}">
				<li class="fieldcontain">
					<span id="idBaseClasif-label" class="property-label"><g:message code="registro.idBaseClasif.label" default="Id Base Clasif" /></span>
					
						<span class="property-value" aria-labelledby="idBaseClasif-label"><g:fieldValue bean="${registroInstance}" field="idBaseClasif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.idBaseVehiculo}">
				<li class="fieldcontain">
					<span id="idBaseVehiculo-label" class="property-label"><g:message code="registro.idBaseVehiculo.label" default="Id Base Vehiculo" /></span>
					
						<span class="property-value" aria-labelledby="idBaseVehiculo-label"><g:fieldValue bean="${registroInstance}" field="idBaseVehiculo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.tempRuta}">
				<li class="fieldcontain">
					<span id="tempRuta-label" class="property-label"><g:message code="registro.tempRuta.label" default="Temp Ruta" /></span>
					
						<span class="property-value" aria-labelledby="tempRuta-label"><g:fieldValue bean="${registroInstance}" field="tempRuta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.pesoTotal}">
				<li class="fieldcontain">
					<span id="pesoTotal-label" class="property-label"><g:message code="registro.pesoTotal.label" default="Peso Total" /></span>
					
						<span class="property-value" aria-labelledby="pesoTotal-label"><g:fieldValue bean="${registroInstance}" field="pesoTotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.velocidad}">
				<li class="fieldcontain">
					<span id="velocidad-label" class="property-label"><g:message code="registro.velocidad.label" default="Velocidad" /></span>
					
						<span class="property-value" aria-labelledby="velocidad-label"><g:fieldValue bean="${registroInstance}" field="velocidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.aceleracion}">
				<li class="fieldcontain">
					<span id="aceleracion-label" class="property-label"><g:message code="registro.aceleracion.label" default="Aceleracion" /></span>
					
						<span class="property-value" aria-labelledby="aceleracion-label"><g:fieldValue bean="${registroInstance}" field="aceleracion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.dispositivo}">
				<li class="fieldcontain">
					<span id="dispositivo-label" class="property-label"><g:message code="registro.dispositivo.label" default="Dispositivo" /></span>
					
						<span class="property-value" aria-labelledby="dispositivo-label"><g:link controller="dispositivo" action="show" id="${registroInstance?.dispositivo?.id}">${registroInstance?.dispositivo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.instante}">
				<li class="fieldcontain">
					<span id="instante-label" class="property-label"><g:message code="registro.instante.label" default="Instante" /></span>
					
						<span class="property-value" aria-labelledby="instante-label"><g:formatDate date="${registroInstance?.instante}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.regejes}">
				<li class="fieldcontain">
					<span id="regejes-label" class="property-label"><g:message code="registro.regejes.label" default="Regejes" /></span>
					
						<g:each in="${registroInstance.regejes}" var="r">
						<span class="property-value" aria-labelledby="regejes-label"><g:link controller="regeje" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${registroInstance?.rutatramo}">
				<li class="fieldcontain">
					<span id="rutatramo-label" class="property-label"><g:message code="registro.rutatramo.label" default="Rutatramo" /></span>
					
						<span class="property-value" aria-labelledby="rutatramo-label"><g:link controller="rutatramo" action="show" id="${registroInstance?.rutatramo?.id}">${registroInstance?.rutatramo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
