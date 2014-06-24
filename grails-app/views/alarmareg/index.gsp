
<%@ page import="com.inti.sipel.wim.Alarmareg" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alarmareg.label', default: 'Alarmareg')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alarmareg" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alarmareg" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="valor" title="${message(code: 'alarmareg.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'alarmareg.descripcion.label', default: 'Descripcion')}" />
					
						<th><g:message code="alarmareg.alarma.label" default="Alarma" /></th>
					
						<th><g:message code="alarmareg.dispositivo.label" default="Dispositivo" /></th>
					
						<g:sortableColumn property="idAlarma" title="${message(code: 'alarmareg.idAlarma.label', default: 'Id Alarma')}" />
					
						<g:sortableColumn property="idDispositivo" title="${message(code: 'alarmareg.idDispositivo.label', default: 'Id Dispositivo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alarmaregInstanceList}" status="i" var="alarmaregInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alarmaregInstance.id}">${fieldValue(bean: alarmaregInstance, field: "valor")}</g:link></td>
					
						<td>${fieldValue(bean: alarmaregInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: alarmaregInstance, field: "alarma")}</td>
					
						<td>${fieldValue(bean: alarmaregInstance, field: "dispositivo")}</td>
					
						<td>${fieldValue(bean: alarmaregInstance, field: "idAlarma")}</td>
					
						<td>${fieldValue(bean: alarmaregInstance, field: "idDispositivo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alarmaregInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
