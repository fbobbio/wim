
<%@ page import="com.inti.sipel.wim.Planoperacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planoperacion.label', default: 'Planoperacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-planoperacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-planoperacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list planoperacion">
			
				<g:if test="${planoperacionInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="planoperacion.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${planoperacionInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoperacionInstance?.cantPeriodo}">
				<li class="fieldcontain">
					<span id="cantPeriodo-label" class="property-label"><g:message code="planoperacion.cantPeriodo.label" default="Cant Periodo" /></span>
					
						<span class="property-value" aria-labelledby="cantPeriodo-label"><g:fieldValue bean="${planoperacionInstance}" field="cantPeriodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoperacionInstance?.baseclasif}">
				<li class="fieldcontain">
					<span id="baseclasif-label" class="property-label"><g:message code="planoperacion.baseclasif.label" default="Baseclasif" /></span>
					
						<span class="property-value" aria-labelledby="baseclasif-label"><g:link controller="baseclasif" action="show" id="${planoperacionInstance?.baseclasif?.id}">${planoperacionInstance?.baseclasif?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${planoperacionInstance?.dispositivos}">
				<li class="fieldcontain">
					<span id="dispositivos-label" class="property-label"><g:message code="planoperacion.dispositivos.label" default="Dispositivos" /></span>
					
						<g:each in="${planoperacionInstance.dispositivos}" var="d">
						<span class="property-value" aria-labelledby="dispositivos-label"><g:link controller="dispositivo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${planoperacionInstance?.planperiodos}">
				<li class="fieldcontain">
					<span id="planperiodos-label" class="property-label"><g:message code="planoperacion.planperiodos.label" default="Planperiodos" /></span>
					
						<g:each in="${planoperacionInstance.planperiodos}" var="p">
						<span class="property-value" aria-labelledby="planperiodos-label"><g:link controller="planperiodo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:planoperacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${planoperacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
