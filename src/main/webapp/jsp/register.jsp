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
			<h1>Login and Registration Form</h1>

		</header>
		<section>

			<div id="container_demo">
				<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
				<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
					id="tologin"></a>
				<div id="wrapper">
					<div id="register" class="animate form">
					   <form id="regForm" modelAttribute="user" action="registerProcess" method="post">
							<h1>Sign up</h1>
							<p>
								<label for="usernamesignup" class="uname" data-icon="u">Your
									username</label> <input id="username" name="username"
									required="required" type="text"
									placeholder="mysuperusername690" />
							</p>
							<p>
								<label for="emailsignup" class="youmail" data-icon="e">
									Your email</label> <input id="email" name="email"
									required="required" type="email"
									placeholder="mysupermail@mail.com" />
							</p>
							<p>
								<label for="firstnamesignup" class="uname" data-icon="u">Your
									Firstname</label> <input id="firstname" name="firstname"
									required="required" type="text"
									placeholder="mysuperusername690" />
							</p>
							<p>
								<label for="Lastnamesignup" class="uname" data-icon="u">
									Lastname</label> <input id="lastname" name="lastname"
									required="required" type="text"
									placeholder="mysuperusername690" />
							</p>
							<p>
								<label for="Phone" class="youmail" data-icon="e">
									Phone</label> <input id="phone" name="phone"
									required="required" type="number"
									placeholder="Mobile Number" />
							</p>
							<p class="signin button">
								<input type="submit" value="Sign up" />
							</p>
						</form>
					</div>

				</div>
			</div>
	</section>

	<%-- <body>
            <form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
                <table align="center">
                    <tr>
                        <td>
                            <form:label path="username">Username</form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="firstname">FirstName</form:label>
                        </td>
                        <td>
                            <form:input path="firstname" name="firstname" id="firstname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="lastname">LastName</form:label>
                        </td>
                        <td>
                            <form:input path="lastname" name="lastname" id="lastname" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="email">Email</form:label>
                        </td>
                        <td>
                            <form:input path="email" name="email" id="email" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="address">Address</form:label>
                        </td>
                        <td>
                            <form:input path="address" name="address" id="address" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="phone">Phone</form:label>
                        </td>
                        <td>
                            <form:input path="phone" name="phone" id="phone" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <form:button id="register" name="register">Register</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="home.jsp">Home</a>
                        </td>
                    </tr>
                </table>
            </form:form> --%>

</div>
</body>
</html>