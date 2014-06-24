
<%@ page import="com.inti.sipel.wim.Ta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ta.label', default: 'Ta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="año" title="${message(code: 'ta.año.label', default: 'Año')}" />
					
						<g:sortableColumn property="transitoanual" title="${message(code: 'ta.transitoanual.label', default: 'Transitoanual')}" />
					
						<g:sortableColumn property="idtramo" title="${message(code: 'ta.idtramo.label', default: 'Idtramo')}" />
					
						<g:sortableColumn property="idtipo" title="${message(code: 'ta.idtipo.label', default: 'Idtipo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taInstanceList}" status="i" var="taInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taInstance.id}">${fieldValue(bean: taInstance, field: "año")}</g:link></td>
					
						<td>${fieldValue(bean: taInstance, field: "transitoanual")}</td>
					
						<td>${fieldValue(bean: taInstance, field: "idtramo")}</td>
					
						<td>${fieldValue(bean: taInstance, field: "idtipo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
