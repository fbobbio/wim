
<%@ page import="com.inti.sipel.wim.Basevehiculo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basevehiculo.label', default: 'Basevehiculo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-basevehiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-basevehiculo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'basevehiculo.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="tipoVehiculo" title="${message(code: 'basevehiculo.tipoVehiculo.label', default: 'Tipo Vehiculo')}" />
					
						<g:sortableColumn property="cantEjes" title="${message(code: 'basevehiculo.cantEjes.label', default: 'Cant Ejes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${basevehiculoInstanceList}" status="i" var="basevehiculoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${basevehiculoInstance.id}">${fieldValue(bean: basevehiculoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: basevehiculoInstance, field: "tipoVehiculo")}</td>
					
						<td>${fieldValue(bean: basevehiculoInstance, field: "cantEjes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${basevehiculoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
