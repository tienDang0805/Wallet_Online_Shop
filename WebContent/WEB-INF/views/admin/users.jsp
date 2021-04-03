<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>User's page</title>
   <style>
    
			h1{
			  font-size: 30px;
			  color: #fff;
			  text-transform: uppercase;
			  font-weight: 300;
			  text-align: center;
			  margin-bottom: 15px;
			}
			table{
			  width:100%;
			  table-layout: fixed;
			}
			.tbl-header{
			  background-color: rgba(255,255,255,0.3);
			 }
			.tbl-content{
			  height:300px;
			  overflow-x:auto;
			  margin-top: 0px;
			  border: 1px solid rgba(255,255,255,0.3);
			}
			th{
			  padding: 20px 15px;
			  text-align: left;
			  font-weight: 500;
			  font-size: 12px;
			  color: #fff;
			  text-transform: uppercase;
			}
			td{
			  padding: 15px;
			  text-align: left;
			  vertical-align:middle;
			  font-weight: 300;
			  font-size: 12px;
			  color: #fff;
			  border-bottom: solid 1px rgba(255,255,255,0.1);
			}
			
			
			/* demo styles */
			
			@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
			body{
			  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
			  background: linear-gradient(to right, #25c481, #25b7c4);
			  font-family: 'Roboto', sans-serif;
			}
			section{
			  margin: 50px;
			}
			
			
			/* follow me template */
			.made-with-love {
			  margin-top: 40px;
			  padding: 10px;
			  clear: left;
			  text-align: center;
			  font-size: 10px;
			  font-family: arial;
			  color: #fff;
			}
			.made-with-love i {
			  font-style: normal;
			  color: #F50057;
			  font-size: 14px;
			  position: relative;
			  top: 2px;
			}
			.made-with-love a {
			  color: #fff;
			  text-decoration: none;
			}
			.made-with-love a:hover {
			  text-decoration: underline;
			}
			
			
			/* for custom scrollbar for webkit browser*/
			
			::-webkit-scrollbar {
			    width: 6px;
			} 
			::-webkit-scrollbar-track {
			    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
			} 
			::-webkit-scrollbar-thumb {
			    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
			}
			    
			    </style>
</head>
<body>
	<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="p-4 pt-5">
					<c:url var="urlImg" value="resources/admin/img/logo.jpg"/>
                    <a href="#" class="img logo rounded-circle mb-5" style="background-image: url(<c:url value="/resources/admin/img/logo.jpg"/>);"></a>
                    <ul class="list-unstyled components mb-5">
                        <li class="active">
                            <a href="users.htm">dbo.USERS</a>
                        </li>
                        <li>
                            <a href="categories.htm">dbo.PRODUCTS</a>
                        </li>
                        <li>
                            <a href="types.htm">dbo.CATEGORIES</a>
                        </li>
                        
                    </ul>
                    <div class="footer">
                        <p>Quản lý thông tin trên database</p>
                    </div>
	            </div>
    	    </nav>

        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5">
            <h3>Thông tin dbo.USERS</h3>
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-12 mx-auto">
                        <div class="card rounded-0 border-0 shadow">
                            <div class="card-body p-5">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Username</th>
                                                <th>Password</th>
                                                <th>Email</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="u" items="${users}">
                                            <tr>
                                                <th>${u.id }</th>
                                                <td>${u.username }</td>
                                                <td>${u.password }</td>
                                                <td>${u.email }</td>
                                                <td>
                                                    
                                                    <a href="deleteUsers/${u.id}.htm"><input id="delete" type="button" value="Xóa"></a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            <tr>
                                            	<c:url var="url" value="insertUsers.htm"/>
                                                <form:form action="${url}" modelAttribute="user">
                                                <th><input type="text" placeholder="ID" name="id"></th>
                                                <th><input type="text" placeholder="Username" name="username"></th>
                                                <th><input type="text" placeholder="Password" name="password"></th>
                                                <th><input type="text" placeholder="Email" name="email"></th>
                                                <th>
                                                    <button class="btn btn-primary rounded-0 btn-block">Thêm mới</button>
                                                </th>
                                                </form:form>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
        </div>
	</div>

    <script src="<c:url value="/resources/admin/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/popper.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/main.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/custom.js"/>"></script>
</body>
</html>