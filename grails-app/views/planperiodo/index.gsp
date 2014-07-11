
<%@ page import="com.inti.sipel.wim.Planperiodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'planperiodo.label', default: 'Planperiodo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-planperiodo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-planperiodo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="estado" title="${message(code: 'planperiodo.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="fin" title="${message(code: 'planperiodo.fin.label', default: 'Fin')}" />
					
						<g:sortableColumn property="idPlanOp" title="${message(code: 'planperiodo.idPlanOp.label', default: 'Id Plan Op')}" />
					
						<g:sortableColumn property="inicio" title="${message(code: 'planperiodo.inicio.label', default: 'Inicio')}" />
					
						<th><g:message code="planperiodo.planoperacion.label" default="Planoperacion" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${planperiodoInstanceList}" status="i" var="planperiodoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${planperiodoInstance.id}">${fieldValue(bean: planperiodoInstance, field: "estado")}</g:link></td>
					
						<td><g:formatDate date="${planperiodoInstance.fin}" /></td>
					
						<td>${fieldValue(bean: planperiodoInstance, field: "idPlanOp")}</td>
					
						<td><g:formatDate date="${planperiodoInstance.inicio}" /></td>
					
						<td>${fieldValue(bean: planperiodoInstance, field: "planoperacion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${planperiodoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
