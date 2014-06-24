
<%@ page import="com.inti.sipel.wim.Alarmareg" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alarmareg.label', default: 'Alarmareg')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alarmareg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alarmareg" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alarmareg">
			
				<g:if test="${alarmaregInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="alarmareg.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${alarmaregInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alarmaregInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="alarmareg.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${alarmaregInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alarmaregInstance?.alarma}">
				<li class="fieldcontain">
					<span id="alarma-label" class="property-label"><g:message code="alarmareg.alarma.label" default="Alarma" /></span>
					
						<span class="property-value" aria-labelledby="alarma-label"><g:link controller="alarma" action="show" id="${alarmaregInstance?.alarma?.id}">${alarmaregInstance?.alarma?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alarmaregInstance?.dispositivo}">
				<li class="fieldcontain">
					<span id="dispositivo-label" class="property-label"><g:message code="alarmareg.dispositivo.label" default="Dispositivo" /></span>
					
						<span class="property-value" aria-labelledby="dispositivo-label"><g:link controller="dispositivo" action="show" id="${alarmaregInstance?.dispositivo?.id}">${alarmaregInstance?.dispositivo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alarmaregInstance?.idAlarma}">
				<li class="fieldcontain">
					<span id="idAlarma-label" class="property-label"><g:message code="alarmareg.idAlarma.label" default="Id Alarma" /></span>
					
						<span class="property-value" aria-labelledby="idAlarma-label"><g:fieldValue bean="${alarmaregInstance}" field="idAlarma"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alarmaregInstance?.idDispositivo}">
				<li class="fieldcontain">
					<span id="idDispositivo-label" class="property-label"><g:message code="alarmareg.idDispositivo.label" default="Id Dispositivo" /></span>
					
						<span class="property-value" aria-labelledby="idDispositivo-label"><g:fieldValue bean="${alarmaregInstance}" field="idDispositivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alarmaregInstance?.instante}">
				<li class="fieldcontain">
					<span id="instante-label" class="property-label"><g:message code="alarmareg.instante.label" default="Instante" /></span>
					
						<span class="property-value" aria-labelledby="instante-label"><g:formatDate date="${alarmaregInstance?.instante}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alarmaregInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alarmaregInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
