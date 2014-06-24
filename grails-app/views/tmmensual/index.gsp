
<%@ page import="com.inti.sipel.wim.Tmmensual" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tmmensual.label', default: 'Tmmensual')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tmmensual" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tmmensual" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tmm" title="${message(code: 'tmmensual.tmm.label', default: 'Tmm')}" />
					
						<g:sortableColumn property="idBaseClasif" title="${message(code: 'tmmensual.idBaseClasif.label', default: 'Id Base Clasif')}" />
					
						<g:sortableColumn property="idBaseVehiculo" title="${message(code: 'tmmensual.idBaseVehiculo.label', default: 'Id Base Vehiculo')}" />
					
						<g:sortableColumn property="idTramo" title="${message(code: 'tmmensual.idTramo.label', default: 'Id Tramo')}" />
					
						<g:sortableColumn property="mes" title="${message(code: 'tmmensual.mes.label', default: 'Mes')}" />
					
						<g:sortableColumn property="year" title="${message(code: 'tmmensual.year.label', default: 'Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tmmensualInstanceList}" status="i" var="tmmensualInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tmmensualInstance.id}">${fieldValue(bean: tmmensualInstance, field: "tmm")}</g:link></td>
					
						<td>${fieldValue(bean: tmmensualInstance, field: "idBaseClasif")}</td>
					
						<td>${fieldValue(bean: tmmensualInstance, field: "idBaseVehiculo")}</td>
					
						<td>${fieldValue(bean: tmmensualInstance, field: "idTramo")}</td>
					
						<td>${fieldValue(bean: tmmensualInstance, field: "mes")}</td>
					
						<td>${fieldValue(bean: tmmensualInstance, field: "year")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tmmensualInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
