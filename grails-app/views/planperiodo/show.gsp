
<%@ page import="com.inti.sipel.wim.Planperiodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planperiodo.label', default: 'Planperiodo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-planperiodo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-planperiodo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list planperiodo">
			
				<g:if test="${planperiodoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="planperiodo.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${planperiodoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planperiodoInstance?.fin}">
				<li class="fieldcontain">
					<span id="fin-label" class="property-label"><g:message code="planperiodo.fin.label" default="Fin" /></span>
					
						<span class="property-value" aria-labelledby="fin-label"><g:formatDate date="${planperiodoInstance?.fin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${planperiodoInstance?.idPlanOp}">
				<li class="fieldcontain">
					<span id="idPlanOp-label" class="property-label"><g:message code="planperiodo.idPlanOp.label" default="Id Plan Op" /></span>
					
						<span class="property-value" aria-labelledby="idPlanOp-label"><g:fieldValue bean="${planperiodoInstance}" field="idPlanOp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${planperiodoInstance?.inicio}">
				<li class="fieldcontain">
					<span id="inicio-label" class="property-label"><g:message code="planperiodo.inicio.label" default="Inicio" /></span>
					
						<span class="property-value" aria-labelledby="inicio-label"><g:formatDate date="${planperiodoInstance?.inicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${planperiodoInstance?.planoperacion}">
				<li class="fieldcontain">
					<span id="planoperacion-label" class="property-label"><g:message code="planperiodo.planoperacion.label" default="Planoperacion" /></span>
					
						<span class="property-value" aria-labelledby="planoperacion-label"><g:link controller="planoperacion" action="show" id="${planperiodoInstance?.planoperacion?.id}">${planperiodoInstance?.planoperacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:planperiodoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${planperiodoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
