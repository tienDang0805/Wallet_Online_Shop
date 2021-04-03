<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Category's page</title>
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
				<a href="#" class="img logo rounded-circle mb-5" style="background-image: url(<c:url value="/resources/admin/img/logo.jpg"/>);"></a>
				<ul class="list-unstyled components mb-5">
					<li><a href="users.htm">dbo.USERS</a></li>
					<li class="active"><a href="categories.htm">dbo.PRODUCT</a></li>
					<li><a href="types.htm">dbo.CATEGORY</a></li>
					
				</ul>
				<div class="footer">
					<p>Quản lý thông tin trên database</p>
				</div>
			</div>
		</nav>

		<!-- Page Content  -->
		<section>
		
		<h1>Fixed Table header</h1>
    <div class="tbl-header">
      <table cellpadding="0" cellspacing="0" border="0">
        <thead>
          <tr>
            									<th>IDPRODUCT</th>
                                                <th>NamePRODUCT</th>
                                                <th>Price</th>
                                                <th>Discount</th>
                                                <th>Lastes</th>
                                                <th>Reviews</th>
                                                <th>NAMECATE</th>
                                                <th></th>
          </tr>
        </thead>
      </table>
    </div>
    <div class="tbl-content">
      <table cellpadding="0" cellspacing="0" border="0">
        <tbody>
          <c:forEach var="c" items="${categories}">
                                            <tr>
                                                <th>${c.idcate }</th>
                                                <td>${c.namecate }</td>
                                                <td>${c.prices }</td>
                                                <td>${c.discount }</td>
                                                <td>${c.newitems }</td>
                                                <td>${c.reviews }</td>
                                                <td>${c.type.nametype }</td>
                                                <td>
                                                    
                                                    <a href="deleteCategories/${c.idcate}.htm"><input id="delete" type="button" value="Xóa"></a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            <tr>
                                            	<c:url var="url" value="insertCategories.htm"/>
                                                <form:form action="${url}" modelAttribute="category">
                                                <th>
                                                	<input type="text" placeholder="ID" name="idcate">
                                                </th>
                                                <th>
                                                	<input type="text" placeholder="Name" name="namecate">
                                                	<form:errors path="namecate"/>
                                                </th>
                                                <th>
                                                	<input type="text" placeholder="Prices" name="prices">
                                                	<form:errors path="prices"/>
                                                </th>
                                                <th>
                                                	<input type="text" placeholder="Discount" name="discount">
                                                	<form:errors path="discount"/>
                                                </th>
                                                <th>
                                                	<input type="text" placeholder="Newitems" name="newitems">
                                                	
                                                </th>
                                                <th>
                                                	<input type="text" placeholder="Reviews" name="reviews">
                                                	<form:errors path="reviews"/>
                                                </th>
                                                <th>
                                                	<select name="type.idtype">
													<c:forEach var="t" items="${listIDTypes }">
														<option value="${t.idtype }">${t.nametype }</option>			
													</c:forEach>
													</select>
                                                </th>
                                                <th>
                                                    <button class="btn btn-primary rounded-0 btn-block">Thêm mới</button>
                                                </th>
                                                <th></th>
                                                </form:form>
                                            </tr>
          </tbody>
          </table>
          </div>
		</section>

</div>

	<script src="<c:url value="/resources/admin/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/popper.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/main.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/custom.js"/>"></script>
    
</body>
</html>