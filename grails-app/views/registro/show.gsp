
<%@ page import="com.inti.sipel.wim.Registro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registro.label', default: 'Registro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="stop" id="${registroInstance.id}" params='[idN: registroInstance.idN, instante: registroInstance.instante, dispositivo: registroInstance.dispositivo.id]'><g:message code="default.stop.label"/></g:link></li>
				<li><g:link class="create" action="getaway" id="${registroInstance.id}" params='[idN: registroInstance.idN, instante: registroInstance.instante, dispositivo: registroInstance.dispositivo.id]'><g:message code="default.getaway.label"/></g:link></li>
			</ul>
		</div>
		<div id="show-registro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registro">

				<g:if test="${registroInstance?.carril}">
				<li class="fieldcontain">
					<span id="carril-label" class="property-label"><g:message code="registro.carril.label" default="Carril" /></span>

						<span class="property-value" aria-labelledby="carril-label"><g:fieldValue bean="${registroInstance}" field="carril"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.sentido}">
				<li class="fieldcontain">
					<span id="sentido-label" class="property-label"><g:message code="registro.sentido.label" default="Sentido" /></span>

						<span class="property-value" aria-labelledby="sentido-label"><g:fieldValue bean="${registroInstance}" field="sentido"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.baseClasif}">
				<li class="fieldcontain">
					<span id="baseClasif-label" class="property-label"><g:message code="registro.baseClasif.label" default="Base Clasif" /></span>

						<span class="property-value" aria-labelledby="baseClasif-label"><g:fieldValue bean="${registroInstance}" field="baseClasif.descripcion"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.baseVehiculo}">
				<li class="fieldcontain">
					<span id="baseVehiculo-label" class="property-label"><g:message code="registro.baseVehiculo.label" default="Base Vehículo" /></span>

						<span class="property-value" aria-labelledby="baseVehiculo-label"><g:fieldValue bean="${registroInstance}" field="baseVehiculo.descripcion"/></span>

				</li>
				</g:if>

				<li class="fieldcontain">
					<span id="detencion-label" class="property-label"><g:message code="registro.detencion.label" default="Detención" /></span>
						<span class="property-value" aria-labelledby="detencion-label"><g:fieldValue bean="${registroInstance}" field="detencion"/></span>
				</li>

				<li class="fieldcontain">
					<span id="fuga-label" class="property-label"><g:message code="registro.fuga.label" default="Fuga" /></span>
						<span class="property-value" aria-labelledby="fuga-label"><g:fieldValue bean="${registroInstance}" field="fuga"/></span>
				</li>

				<g:if test="${registroInstance?.tempRuta}">
				<li class="fieldcontain">
					<span id="tempRuta-label" class="property-label"><g:message code="registro.tempRuta.label" default="Temp Ruta" /></span>

						<span class="property-value" aria-labelledby="tempRuta-label"><g:fieldValue bean="${registroInstance}" field="tempRuta"/><g:message code="registro.tempunidad.label" default=" °C"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.pesoTotal}">
				<li class="fieldcontain">
					<span id="pesoTotal-label" class="property-label"><g:message code="registro.pesoTotal.label" default="Peso Total" /></span>

						<span class="property-value" aria-labelledby="pesoTotal-label"><g:fieldValue bean="${registroInstance}" field="pesoTotal"/><g:message code="registro.pesototalunidad.label" default=" Kg"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.velocidad}">
				<li class="fieldcontain">
					<span id="velocidad-label" class="property-label"><g:message code="registro.velocidad.label" default="Velocidad" /></span>

						<span class="property-value" aria-labelledby="velocidad-label"><g:fieldValue bean="${registroInstance}" field="velocidad"/><g:message code="registro.velocidadunidad.label" default=" Km/h"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.aceleracion}">
				<li class="fieldcontain">
					<span id="aceleracion-label" class="property-label"><g:message code="registro.aceleracion.label" default="Aceleracion" /></span>

						<span class="property-value" aria-labelledby="aceleracion-label"><g:fieldValue bean="${registroInstance}" field="aceleracion"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.dispositivo}">
				<li class="fieldcontain">
					<span id="dispositivo-label" class="property-label"><g:message code="registro.dispositivo.label" default="Dispositivo" /></span>

						<span class="property-value" aria-labelledby="dispositivo-label"><g:fieldValue bean="${registroInstance}" field="dispositivo.descripcion"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.instante}">
				<li class="fieldcontain">
					<span id="instante-label" class="property-label"><g:message code="registro.instante.label" default="Instante" /></span>

						<span class="property-value" aria-labelledby="instante-label"><g:formatDate date="${registroInstance?.instante}" type="datetime" style="MEDIUM"/></span>

				</li>
				</g:if>

				<g:if test="${registroInstance?.rutatramo}">
				<li class="fieldcontain">
					<span id="rutatramo-label" class="property-label"><g:message code="registro.rutatramo.label" default="Rutatramo" /></span>

						<span class="property-value" aria-labelledby="rutatramo-label"><g:fieldValue bean="${registroInstance}" field="rutatramo.descripcion"/></span>

				</li>
				</g:if>

      <li class="fieldcontain">
        <span id="image-label" class="property-label"><g:message code="registro.image.label" default="Imágen" /></span>
          <span class="property-value" aria-labelledby="image-label"><a href="/wim/assets/mionca.jpeg"><asset:image src="mionca.jpeg" alt="Imágen" width="60%" height="auto" onclick="location.href=this.src;"/></a></span>
      </li>

    </ol>
    <div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
  </div>
</body>
</html>
