
<%@ page import="com.inti.sipel.wim.Rutatramo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rutatramo.label', default: 'Rutatramo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rutatramo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rutatramo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rutatramo">
			
				<g:if test="${rutatramoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="rutatramo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${rutatramoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutatramoInstance?.kmHasta}">
				<li class="fieldcontain">
					<span id="kmHasta-label" class="property-label"><g:message code="rutatramo.kmHasta.label" default="Km Hasta" /></span>
					
						<span class="property-value" aria-labelledby="kmHasta-label"><g:fieldValue bean="${rutatramoInstance}" field="kmHasta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutatramoInstance?.dispositivos}">
				<li class="fieldcontain">
					<span id="dispositivos-label" class="property-label"><g:message code="rutatramo.dispositivos.label" default="Dispositivos" /></span>
					
						<g:each in="${rutatramoInstance.dispositivos}" var="d">
						<span class="property-value" aria-labelledby="dispositivos-label"><g:link controller="dispositivo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rutatramoInstance?.kmDesde}">
				<li class="fieldcontain">
					<span id="kmDesde-label" class="property-label"><g:message code="rutatramo.kmDesde.label" default="Km Desde" /></span>
					
						<span class="property-value" aria-labelledby="kmDesde-label"><g:fieldValue bean="${rutatramoInstance}" field="kmDesde"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutatramoInstance?.registros}">
				<li class="fieldcontain">
					<span id="registros-label" class="property-label"><g:message code="rutatramo.registros.label" default="Registros" /></span>
					
						<g:each in="${rutatramoInstance.registros}" var="r">
						<span class="property-value" aria-labelledby="registros-label"><g:link controller="registro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rutatramoInstance?.ruta}">
				<li class="fieldcontain">
					<span id="ruta-label" class="property-label"><g:message code="rutatramo.ruta.label" default="Ruta" /></span>
					
						<span class="property-value" aria-labelledby="ruta-label"><g:link controller="ruta" action="show" id="${rutatramoInstance?.ruta?.id}">${rutatramoInstance?.ruta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rutatramoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rutatramoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
