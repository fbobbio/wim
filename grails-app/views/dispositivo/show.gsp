
<%@ page import="com.inti.sipel.wim.Dispositivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dispositivo.label', default: 'Dispositivo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dispositivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dispositivo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dispositivo">
			
				<g:if test="${dispositivoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="dispositivo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${dispositivoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.ipservidor}">
				<li class="fieldcontain">
					<span id="ipservidor-label" class="property-label"><g:message code="dispositivo.ipservidor.label" default="Ipservidor" /></span>
					
						<span class="property-value" aria-labelledby="ipservidor-label"><g:fieldValue bean="${dispositivoInstance}" field="ipservidor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.alarmaregs}">
				<li class="fieldcontain">
					<span id="alarmaregs-label" class="property-label"><g:message code="dispositivo.alarmaregs.label" default="Alarmaregs" /></span>
					
						<g:each in="${dispositivoInstance.alarmaregs}" var="a">
						<span class="property-value" aria-labelledby="alarmaregs-label"><g:link controller="alarmareg" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.baseclasif}">
				<li class="fieldcontain">
					<span id="baseclasif-label" class="property-label"><g:message code="dispositivo.baseclasif.label" default="Baseclasif" /></span>
					
						<span class="property-value" aria-labelledby="baseclasif-label"><g:link controller="baseclasif" action="show" id="${dispositivoInstance?.baseclasif?.id}">${dispositivoInstance?.baseclasif?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.planoperacion}">
				<li class="fieldcontain">
					<span id="planoperacion-label" class="property-label"><g:message code="dispositivo.planoperacion.label" default="Planoperacion" /></span>
					
						<span class="property-value" aria-labelledby="planoperacion-label"><g:link controller="planoperacion" action="show" id="${dispositivoInstance?.planoperacion?.id}">${dispositivoInstance?.planoperacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.registros}">
				<li class="fieldcontain">
					<span id="registros-label" class="property-label"><g:message code="dispositivo.registros.label" default="Registros" /></span>
					
						<g:each in="${dispositivoInstance.registros}" var="r">
						<span class="property-value" aria-labelledby="registros-label"><g:link controller="registro" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.rutatramo}">
				<li class="fieldcontain">
					<span id="rutatramo-label" class="property-label"><g:message code="dispositivo.rutatramo.label" default="Rutatramo" /></span>
					
						<span class="property-value" aria-labelledby="rutatramo-label"><g:link controller="rutatramo" action="show" id="${dispositivoInstance?.rutatramo?.id}">${dispositivoInstance?.rutatramo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dispositivoInstance?.sensors}">
				<li class="fieldcontain">
					<span id="sensors-label" class="property-label"><g:message code="dispositivo.sensors.label" default="Sensors" /></span>
					
						<g:each in="${dispositivoInstance.sensors}" var="s">
						<span class="property-value" aria-labelledby="sensors-label"><g:link controller="sensor" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dispositivoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dispositivoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
