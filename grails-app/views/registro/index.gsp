
<%@ page import="com.inti.sipel.wim.Registro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="nano">
		<g:set var="entityName" value="${message(code: 'registro.label', default: 'Registro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<script type="text/javascript">
  		setInterval(function(){location.assign("${createLink(controller: 'registro',action: 'index', absolute: 'true')}")},10000);
	</script>
		<g:each in="${registroInstanceList}" status="i" var="registroInstance">
											
			<g:if test="${i == 0}">
				<div class="row">
				    <div class="col-lg-12">
					<h1 class="page-header">Vehículo <small>a desviar</small></h1>
				    </div>
				</div>
     				<div class="row">

				    <div class="col-md-8">
					<img class="img-responsive" src="${fieldValue(bean: registroInstance, field: 'imagenurl')}" alt="">
				    </div>

				    <div class="col-md-4">
						<p><button type="button" class="btn btn-default btn-lg" onclick='document.location="<g:createLink action='getaway' id='${registroInstance.id}' params='[idN: registroInstance.idN, instante: registroInstance.instante, dispositivo: registroInstance.dispositivo.id]'/>" '><asset:image src="fuga.png" alt="Fuga"/><br><h3>Registrar Fuga</h3></button>											
						<button type="button" class="btn btn-default btn-lg" onclick='document.location="<g:createLink action='stop' id='${registroInstance.id}' params='[idN: registroInstance.idN, instante: registroInstance.instante, dispositivo: registroInstance.dispositivo.id]'/>" '><asset:image src="pesar.png" alt="Pesar"/><br><h3>Registrar Peso</h3></button></p>

						<p>Fecha y Hora: ${fieldValue(bean: registroInstance, field: "instante")}</p>
                  		    </div>

				</div>

				<div class="row">

            				<div class="col-lg-12">
                				<h3 class="page-header">Próximos vehículos</h3>
            				</div>
			</g:if>
			<g:else>
     					
				<div class="col-sm-3 col-xs-6">
					<a href="#">
					    <img class="img-responsive portfolio-item" src="${fieldValue(bean: registroInstance, field: 'imagenurl')}" alt="">
					</a>
					<p>Fecha y Hora: ${fieldValue(bean: registroInstance, field: "instante")}</p>
				</div>

			</g:else>



		</g:each>

			</div>

		
	</body>
</html>
