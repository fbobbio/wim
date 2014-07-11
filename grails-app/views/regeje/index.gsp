
<%@ page import="com.inti.sipel.wim.Regeje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regeje.label', default: 'Regeje')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regeje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regeje" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="pesoRuedaDer" title="${message(code: 'regeje.pesoRuedaDer.label', default: 'Peso Rueda Der')}" />
					
						<g:sortableColumn property="pesoRuedaIzq" title="${message(code: 'regeje.pesoRuedaIzq.label', default: 'Peso Rueda Izq')}" />
					
						<g:sortableColumn property="distancia" title="${message(code: 'regeje.distancia.label', default: 'Distancia')}" />
					
						<g:sortableColumn property="idDispositivo" title="${message(code: 'regeje.idDispositivo.label', default: 'Id Dispositivo')}" />
					
						<g:sortableColumn property="idRegistro" title="${message(code: 'regeje.idRegistro.label', default: 'Id Registro')}" />
					
						<g:sortableColumn property="instante" title="${message(code: 'regeje.instante.label', default: 'Instante')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regejeInstanceList}" status="i" var="regejeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regejeInstance.id}">${fieldValue(bean: regejeInstance, field: "pesoRuedaDer")}</g:link></td>
					
						<td>${fieldValue(bean: regejeInstance, field: "pesoRuedaIzq")}</td>
					
						<td>${fieldValue(bean: regejeInstance, field: "distancia")}</td>
					
						<td>${fieldValue(bean: regejeInstance, field: "idDispositivo")}</td>
					
						<td>${fieldValue(bean: regejeInstance, field: "idRegistro")}</td>
					
						<td><g:formatDate date="${regejeInstance.instante}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regejeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
