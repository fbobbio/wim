
<%@ page import="com.inti.sipel.wim.Baseclasif" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'baseclasif.label', default: 'Baseclasif')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-baseclasif" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-baseclasif" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list baseclasif">
			
				<g:if test="${baseclasifInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="baseclasif.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${baseclasifInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseclasifInstance?.basevehiculos}">
				<li class="fieldcontain">
					<span id="basevehiculos-label" class="property-label"><g:message code="baseclasif.basevehiculos.label" default="Basevehiculos" /></span>
					
						<g:each in="${baseclasifInstance.basevehiculos}" var="b">
						<span class="property-value" aria-labelledby="basevehiculos-label"><g:link controller="basevehiculo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${baseclasifInstance?.dispositivos}">
				<li class="fieldcontain">
					<span id="dispositivos-label" class="property-label"><g:message code="baseclasif.dispositivos.label" default="Dispositivos" /></span>
					
						<g:each in="${baseclasifInstance.dispositivos}" var="d">
						<span class="property-value" aria-labelledby="dispositivos-label"><g:link controller="dispositivo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${baseclasifInstance?.planoperacions}">
				<li class="fieldcontain">
					<span id="planoperacions-label" class="property-label"><g:message code="baseclasif.planoperacions.label" default="Planoperacions" /></span>
					
						<g:each in="${baseclasifInstance.planoperacions}" var="p">
						<span class="property-value" aria-labelledby="planoperacions-label"><g:link controller="planoperacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:baseclasifInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${baseclasifInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
