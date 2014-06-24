
<%@ page import="com.inti.sipel.wim.Sensorcorrec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sensorcorrec.label', default: 'Sensorcorrec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sensorcorrec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sensorcorrec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tempMax" title="${message(code: 'sensorcorrec.tempMax.label', default: 'Temp Max')}" />
					
						<g:sortableColumn property="factor" title="${message(code: 'sensorcorrec.factor.label', default: 'Factor')}" />
					
						<g:sortableColumn property="idSensor" title="${message(code: 'sensorcorrec.idSensor.label', default: 'Id Sensor')}" />
					
						<th><g:message code="sensorcorrec.sensor.label" default="Sensor" /></th>
					
						<g:sortableColumn property="tempMin" title="${message(code: 'sensorcorrec.tempMin.label', default: 'Temp Min')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sensorcorrecInstanceList}" status="i" var="sensorcorrecInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sensorcorrecInstance.id}">${fieldValue(bean: sensorcorrecInstance, field: "tempMax")}</g:link></td>
					
						<td>${fieldValue(bean: sensorcorrecInstance, field: "factor")}</td>
					
						<td>${fieldValue(bean: sensorcorrecInstance, field: "idSensor")}</td>
					
						<td>${fieldValue(bean: sensorcorrecInstance, field: "sensor")}</td>
					
						<td>${fieldValue(bean: sensorcorrecInstance, field: "tempMin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sensorcorrecInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
