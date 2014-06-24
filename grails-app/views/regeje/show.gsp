
<%@ page import="com.inti.sipel.wim.Regeje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regeje.label', default: 'Regeje')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regeje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regeje" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regeje">
			
				<g:if test="${regejeInstance?.pesoRuedaDer}">
				<li class="fieldcontain">
					<span id="pesoRuedaDer-label" class="property-label"><g:message code="regeje.pesoRuedaDer.label" default="Peso Rueda Der" /></span>
					
						<span class="property-value" aria-labelledby="pesoRuedaDer-label"><g:fieldValue bean="${regejeInstance}" field="pesoRuedaDer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.pesoRuedaIzq}">
				<li class="fieldcontain">
					<span id="pesoRuedaIzq-label" class="property-label"><g:message code="regeje.pesoRuedaIzq.label" default="Peso Rueda Izq" /></span>
					
						<span class="property-value" aria-labelledby="pesoRuedaIzq-label"><g:fieldValue bean="${regejeInstance}" field="pesoRuedaIzq"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.distancia}">
				<li class="fieldcontain">
					<span id="distancia-label" class="property-label"><g:message code="regeje.distancia.label" default="Distancia" /></span>
					
						<span class="property-value" aria-labelledby="distancia-label"><g:fieldValue bean="${regejeInstance}" field="distancia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.idDispositivo}">
				<li class="fieldcontain">
					<span id="idDispositivo-label" class="property-label"><g:message code="regeje.idDispositivo.label" default="Id Dispositivo" /></span>
					
						<span class="property-value" aria-labelledby="idDispositivo-label"><g:fieldValue bean="${regejeInstance}" field="idDispositivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.idRegistro}">
				<li class="fieldcontain">
					<span id="idRegistro-label" class="property-label"><g:message code="regeje.idRegistro.label" default="Id Registro" /></span>
					
						<span class="property-value" aria-labelledby="idRegistro-label"><g:fieldValue bean="${regejeInstance}" field="idRegistro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.instante}">
				<li class="fieldcontain">
					<span id="instante-label" class="property-label"><g:message code="regeje.instante.label" default="Instante" /></span>
					
						<span class="property-value" aria-labelledby="instante-label"><g:formatDate date="${regejeInstance?.instante}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.ordenEje}">
				<li class="fieldcontain">
					<span id="ordenEje-label" class="property-label"><g:message code="regeje.ordenEje.label" default="Orden Eje" /></span>
					
						<span class="property-value" aria-labelledby="ordenEje-label"><g:fieldValue bean="${regejeInstance}" field="ordenEje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regejeInstance?.registro}">
				<li class="fieldcontain">
					<span id="registro-label" class="property-label"><g:message code="regeje.registro.label" default="Registro" /></span>
					
						<span class="property-value" aria-labelledby="registro-label"><g:link controller="registro" action="show" id="${regejeInstance?.registro?.id}">${regejeInstance?.registro?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:regejeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${regejeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
