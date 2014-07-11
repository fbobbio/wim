
<%@ page import="com.inti.sipel.wim.Prueba" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prueba.label', default: 'Prueba')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prueba" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prueba" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="instante" title="${message(code: 'prueba.instante.label', default: 'Instante')}" />
					
						<g:sortableColumn property="idDispositivo" title="${message(code: 'prueba.idDispositivo.label', default: 'Id Dispositivo')}" />
					
						<g:sortableColumn property="carril" title="${message(code: 'prueba.carril.label', default: 'Carril')}" />
					
						<g:sortableColumn property="sentido" title="${message(code: 'prueba.sentido.label', default: 'Sentido')}" />
					
						<g:sortableColumn property="idRutaTramo" title="${message(code: 'prueba.idRutaTramo.label', default: 'Id Ruta Tramo')}" />
					
						<g:sortableColumn property="idBaseClasif" title="${message(code: 'prueba.idBaseClasif.label', default: 'Id Base Clasif')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pruebaInstanceList}" status="i" var="pruebaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pruebaInstance.id}">${fieldValue(bean: pruebaInstance, field: "instante")}</g:link></td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "idDispositivo")}</td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "carril")}</td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "sentido")}</td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "idRutaTramo")}</td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "idBaseClasif")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pruebaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
