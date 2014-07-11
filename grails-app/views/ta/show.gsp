
<%@ page import="com.inti.sipel.wim.Ta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ta.label', default: 'Ta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ta">
			
				<g:if test="${taInstance?.año}">
				<li class="fieldcontain">
					<span id="año-label" class="property-label"><g:message code="ta.año.label" default="Año" /></span>
					
						<span class="property-value" aria-labelledby="año-label"><g:fieldValue bean="${taInstance}" field="año"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taInstance?.transitoanual}">
				<li class="fieldcontain">
					<span id="transitoanual-label" class="property-label"><g:message code="ta.transitoanual.label" default="Transitoanual" /></span>
					
						<span class="property-value" aria-labelledby="transitoanual-label"><g:fieldValue bean="${taInstance}" field="transitoanual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taInstance?.idtramo}">
				<li class="fieldcontain">
					<span id="idtramo-label" class="property-label"><g:message code="ta.idtramo.label" default="Idtramo" /></span>
					
						<span class="property-value" aria-labelledby="idtramo-label"><g:fieldValue bean="${taInstance}" field="idtramo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${taInstance?.idtipo}">
				<li class="fieldcontain">
					<span id="idtipo-label" class="property-label"><g:message code="ta.idtipo.label" default="Idtipo" /></span>
					
						<span class="property-value" aria-labelledby="idtipo-label"><g:fieldValue bean="${taInstance}" field="idtipo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:taInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${taInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
