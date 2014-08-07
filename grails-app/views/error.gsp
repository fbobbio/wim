<!DOCTYPE html>
<html>
	<head>
		<title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		<meta name="layout" content="nano">
		<g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
	</head>
	<body>
	<script type="text/javascript">
  		setInterval(function(){location.assign("${createLink(controller: 'registro',action: 'index', absolute: 'true')}")},1000);
	</script>
		<g:if env="development">
			<g:renderException exception="${exception}" />
		</g:if>
		<g:else>
			<ul class="errors">
				<li>An error has occurred</li>
			</ul>
		</g:else>

	</body>
</html>
