
<%@ page import="com.inti.sipel.wim.Dispositivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dispositivo.label', default: 'Dispositivo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dispositivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dispositivo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'dispositivo.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="ipservidor" title="${message(code: 'dispositivo.ipservidor.label', default: 'Ipservidor')}" />
					
						<th><g:message code="dispositivo.baseclasif.label" default="Baseclasif" /></th>
					
						<th><g:message code="dispositivo.planoperacion.label" default="Planoperacion" /></th>
					
						<th><g:message code="dispositivo.rutatramo.label" default="Rutatramo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dispositivoInstanceList}" status="i" var="dispositivoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dispositivoInstance.id}">${fieldValue(bean: dispositivoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: dispositivoInstance, field: "ipservidor")}</td>
					
						<td>${fieldValue(bean: dispositivoInstance, field: "baseclasif")}</td>
					
						<td>${fieldValue(bean: dispositivoInstance, field: "planoperacion")}</td>
					
						<td>${fieldValue(bean: dispositivoInstance, field: "rutatramo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dispositivoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
