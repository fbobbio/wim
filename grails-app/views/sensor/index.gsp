
<%@ page import="com.inti.sipel.wim.Sensor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sensor.label', default: 'Sensor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sensor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sensor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'sensor.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="sensor.dispositivo.label" default="Dispositivo" /></th>
					
						<th><g:message code="sensor.sensortipo.label" default="Sensortipo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sensorInstanceList}" status="i" var="sensorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sensorInstance.id}">${fieldValue(bean: sensorInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: sensorInstance, field: "dispositivo")}</td>
					
						<td>${fieldValue(bean: sensorInstance, field: "sensortipo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sensorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
