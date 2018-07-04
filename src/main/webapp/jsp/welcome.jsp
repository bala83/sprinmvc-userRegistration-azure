<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>

<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>Login and Registration Form with HTML5 and CSS3</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Login and Registration Form with HTML5 and CSS3" />
<meta name="keywords"
	content="html5, css3, form, switch, animation, :target, pseudo-class" />
<meta name="author" content="Codrops" />
<spring:url value="/resources/css/demo.css" var="mainCss" />
<spring:url value="/resources/css/style.css" var="styleCss" />
<spring:url value="/resources/css/animate-custom.css" var="animateCss" />

<link href="${mainCss}" rel="stylesheet" />
<link href="${styleCss}" rel="stylesheet" />
<link href="${animateCss}" rel="stylesheet" />


</head>
<body>
	<div class="container">
		<header>
			<h1>AZURE Web Application </h1>

		</header>
		<section>

			<div id="container_demo">
				<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
				<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
					id="tologin"></a>
				<div id="wrapper">
					<div id="register" class="animate form">
        <table>
            <tr>
                <td>Welcome ${firstname}</td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td><p class="signin button"><a href="home.jsp">Home</a></p>
                </td>
            </tr>
        </table>
        </div>
</div></div>
	</section>
        
    </body>
    </html>