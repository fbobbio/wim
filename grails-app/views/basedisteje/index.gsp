
<%@ page import="com.inti.sipel.wim.Basedisteje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basedisteje.label', default: 'Basedisteje')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-basedisteje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-basedisteje" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="distanciaMin" title="${message(code: 'basedisteje.distanciaMin.label', default: 'Distancia Min')}" />
					
						<g:sortableColumn property="distanciaMax" title="${message(code: 'basedisteje.distanciaMax.label', default: 'Distancia Max')}" />
					
						<th><g:message code="basedisteje.basevehiculo.label" default="Basevehiculo" /></th>
					
						<g:sortableColumn property="idBaseVehiculo" title="${message(code: 'basedisteje.idBaseVehiculo.label', default: 'Id Base Vehiculo')}" />
					
						<g:sortableColumn property="orden" title="${message(code: 'basedisteje.orden.label', default: 'Orden')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${basedistejeInstanceList}" status="i" var="basedistejeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${basedistejeInstance.id}">${fieldValue(bean: basedistejeInstance, field: "distanciaMin")}</g:link></td>
					
						<td>${fieldValue(bean: basedistejeInstance, field: "distanciaMax")}</td>
					
						<td>${fieldValue(bean: basedistejeInstance, field: "basevehiculo")}</td>
					
						<td>${fieldValue(bean: basedistejeInstance, field: "idBaseVehiculo")}</td>
					
						<td>${fieldValue(bean: basedistejeInstance, field: "orden")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${basedistejeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
