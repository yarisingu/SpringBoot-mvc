<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	
	<h1 style="color:green">${success}</h1>
	<h1 style="color:red">${fail}</h1>
	<h1>Welcome to Home page</h1><br>
	
	
	<%if(session.getAttribute("admin")==null){%>
	
	<a href="/AdminLogin.jsp"><button>Click hear to Login as a Admin</button></a>
	<a href="/StudentLogin.jsp"><button>Click here to Login as Student</button></a>
	<a href="/FacultyLogin.jsp"><button>Click here to Login as Faculty</button></a>
	<a href="/StaffLogin.jsp"><button>Click here to Login as Staff</button></a>
	
	<% }else{%>
	
	
	<a href="/AddCources.jsp"><button>Add course</button></a><br>
	<a href="/admin/stream"><button>Add Stream</button></a><br>
	<a href="/logout"><button>Logout</button></a>
	
	
	<%} %>
	
	
</body>
</html>