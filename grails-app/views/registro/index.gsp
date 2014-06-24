
<%@ page import="com.inti.sipel.wim.Registro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registro.label', default: 'Registro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="carril" title="${message(code: 'registro.carril.label', default: 'Carril')}" />
					
						<g:sortableColumn property="sentido" title="${message(code: 'registro.sentido.label', default: 'Sentido')}" />
					
						<g:sortableColumn property="idBaseClasif" title="${message(code: 'registro.idBaseClasif.label', default: 'Id Base Clasif')}" />
					
						<g:sortableColumn property="idBaseVehiculo" title="${message(code: 'registro.idBaseVehiculo.label', default: 'Id Base Vehiculo')}" />
					
						<g:sortableColumn property="tempRuta" title="${message(code: 'registro.tempRuta.label', default: 'Temp Ruta')}" />
					
						<g:sortableColumn property="pesoTotal" title="${message(code: 'registro.pesoTotal.label', default: 'Peso Total')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registroInstanceList}" status="i" var="registroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registroInstance.id}">${fieldValue(bean: registroInstance, field: "carril")}</g:link></td>
					
						<td>${fieldValue(bean: registroInstance, field: "sentido")}</td>
					
						<td>${fieldValue(bean: registroInstance, field: "idBaseClasif")}</td>
					
						<td>${fieldValue(bean: registroInstance, field: "idBaseVehiculo")}</td>
					
						<td>${fieldValue(bean: registroInstance, field: "tempRuta")}</td>
					
						<td>${fieldValue(bean: registroInstance, field: "pesoTotal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
