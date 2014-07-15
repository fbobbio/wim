
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

						<g:sortableColumn property="instante" title="${message(code: 'registro.instante.label', default: 'Instante')}" />

						<g:sortableColumn property="tempRuta" title="${message(code: 'registro.tempRuta.label', default: 'Temp Ruta')}" />

						<g:sortableColumn property="velocidad" title="${message(code: 'registro.velocidad.label', default: 'Velocidad')}" />

						<g:sortableColumn property="aceleracion" title="${message(code: 'registro.aceleracion.label', default: 'Aceleración')}" />

						<g:sortableColumn property="pesoTotal" title="${message(code: 'registro.pesoTotal.label', default: 'Peso Total')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${registroInstanceList}" status="i" var="registroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${registroInstance.id}" params="[idN: registroInstance.idN, instante: registroInstance.instante, dispositivo: registroInstance.dispositivo.id]">${fieldValue(bean: registroInstance, field: "carril")}</g:link></td>

						<td>${fieldValue(bean: registroInstance, field: "instante")}</td>

						<td>${fieldValue(bean: registroInstance, field: "tempRuta")}</td>

						<td>${fieldValue(bean: registroInstance, field: "velocidad")}</td>

						<td>${fieldValue(bean: registroInstance, field: "aceleracion")}</td>

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
